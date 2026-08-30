import 'package:flutter/material.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';

import '../../../../domain/models/statement_import_preview.dart';
import '../view_models/import_statement_view_model.dart';

class ImportStatementView extends StatelessWidget {
  const ImportStatementView({required this.viewModel, super.key});

  final ImportStatementViewModel viewModel;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('导入微信账单')),
    body: SafeArea(
      child: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) => Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: switch (viewModel.phase) {
              ImportStatementPhase.idle => _EmptyState(viewModel: viewModel),
              ImportStatementPhase.selecting => const _BusyState(
                label: '正在读取账单…',
              ),
              ImportStatementPhase.ready => _PreviewState(viewModel: viewModel),
              ImportStatementPhase.importing => const _BusyState(
                label: '正在写入本地账本…',
              ),
              ImportStatementPhase.complete => _CompleteState(
                viewModel: viewModel,
              ),
              ImportStatementPhase.error => _ErrorState(viewModel: viewModel),
            },
          ),
        ),
      ),
    ),
  );
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.viewModel});

  final ImportStatementViewModel viewModel;

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(24),
    children: [
      const SizedBox(height: 32),
      Icon(
        Icons.receipt_long_outlined,
        size: 64,
        color: Theme.of(context).colorScheme.primary,
      ),
      const SizedBox(height: 24),
      Text(
        '选择微信支付账单',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      const SizedBox(height: 12),
      const Text(
        '支持微信支付导出的 XLSX 文件。文件会在当前设备解析，确认前不会写入账本。',
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 32),
      FilledButton.icon(
        onPressed: viewModel.selectFile,
        icon: const Icon(Icons.upload_file_outlined),
        label: const Text('选择 XLSX 文件'),
      ),
    ],
  );
}

class _BusyState extends StatelessWidget {
  const _BusyState({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircularProgressIndicator(),
        const SizedBox(height: 16),
        Text(label),
      ],
    ),
  );
}

class _PreviewState extends StatelessWidget {
  const _PreviewState({required this.viewModel});

  final ImportStatementViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final preview = viewModel.preview!;
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        Text(preview.fileName, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 4),
        Text(_periodLabel(preview)),
        const SizedBox(height: 20),
        _SummaryGrid(preview: preview),
        if (preview.warnings.isNotEmpty) ...[
          const SizedBox(height: 16),
          Card(
            color: Theme.of(context).colorScheme.errorContainer,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text('${preview.warnings.length} 行需要检查，将不会导入。'),
            ),
          ),
        ],
        const SizedBox(height: 24),
        Text('流水预览', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        for (final item in preview.items.take(20)) _TransactionTile(item: item),
        if (preview.items.length > 20)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              '还有 ${preview.items.length - 20} 笔，将在确认后一起导入。',
              textAlign: TextAlign.center,
            ),
          ),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: preview.importableCount == 0
              ? null
              : viewModel.confirmImport,
          child: Text('确认导入 ${preview.importableCount} 笔'),
        ),
        const SizedBox(height: 8),
        TextButton(onPressed: viewModel.selectFile, child: const Text('重新选择')),
      ],
    );
  }
}

class _SummaryGrid extends StatelessWidget {
  const _SummaryGrid({required this.preview});

  final StatementImportPreview preview;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final width = constraints.maxWidth >= 600
          ? (constraints.maxWidth - 12) / 2
          : constraints.maxWidth;
      return Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          _SummaryCard(
            width: width,
            label: '可导入',
            value: '${preview.importableCount} 笔',
          ),
          _SummaryCard(
            width: width,
            label: '已存在',
            value: '${preview.duplicateCount} 笔',
          ),
          _SummaryCard(
            width: width,
            label: '收入',
            value: _money(preview.incomeMinor),
          ),
          _SummaryCard(
            width: width,
            label: '支出',
            value: _money(preview.expenseMinor),
          ),
        ],
      );
    },
  );
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.width,
    required this.label,
    required this.value,
  });

  final double width;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: width,
    child: Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 4),
            Text(value, style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    ),
  );
}

class _TransactionTile extends StatelessWidget {
  const _TransactionTile({required this.item});

  final StatementImportItem item;

  @override
  Widget build(BuildContext context) {
    final prefix = switch (item.direction) {
      RawDirection.inflow => '+',
      RawDirection.outflow => '−',
      RawDirection.neutral || RawDirection.unknown => '',
    };
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(child: Icon(_directionIcon(item.direction))),
      title: Text(
        item.counterparty.isEmpty ? item.description : item.counterparty,
      ),
      subtitle: Text('${_date(item.occurredAt)} · ${item.rawTransactionType}'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('$prefix${_money(item.amount.minorUnits)}'),
          if (item.isDuplicate)
            Text('已存在', style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}

class _CompleteState extends StatelessWidget {
  const _CompleteState({required this.viewModel});

  final ImportStatementViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final result = viewModel.result!;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 72,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 20),
            Text(
              '已导入 ${result.importedCount} 笔',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            if (result.duplicateCount > 0)
              Text('自动跳过 ${result.duplicateCount} 笔重复流水'),
            const SizedBox(height: 28),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('返回首页'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.viewModel});

  final ImportStatementViewModel viewModel;

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: 16),
          Text(
            viewModel.errorMessage ?? '账单处理失败。',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: viewModel.selectFile,
            child: const Text('重新选择'),
          ),
        ],
      ),
    ),
  );
}

String _periodLabel(StatementImportPreview preview) {
  final account = preview.accountLabel == null
      ? '微信支付'
      : '微信 · ${preview.accountLabel}';
  final start = preview.statementStartAt;
  final end = preview.statementEndAt;
  if (start == null || end == null) return account;
  return '$account · ${_date(start)} 至 ${_date(end)}';
}

String _money(int minorUnits) => '¥${(minorUnits / 100).toStringAsFixed(2)}';

String _date(DateTime value) =>
    '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';

IconData _directionIcon(RawDirection direction) => switch (direction) {
  RawDirection.inflow => Icons.south_west,
  RawDirection.outflow => Icons.north_east,
  RawDirection.neutral => Icons.swap_horiz,
  RawDirection.unknown => Icons.question_mark,
};
