import 'package:flutter/material.dart';
import 'package:moneyseen_ui/moneyseen_ui.dart';

import '../view_models/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({required this.viewModel, super.key});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (viewModel.error != null) {
            return const Center(child: Text('本地账本初始化失败，请稍后重试。'));
          }

          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 720),
              child: ListView(
                padding: const EdgeInsets.all(24),
                children: [
                  Text(
                    'MoneySeen',
                    style: Theme.of(context).textTheme.displaySmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '让每一笔钱的去向都看得见。',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 32),
                  const MoneySeenStatusCard(
                    icon: Icons.storage_outlined,
                    title: '本地账本已就绪',
                    description: '账单、分类和报表默认保存在当前设备中。',
                  ),
                  const SizedBox(height: 16),
                  MoneySeenStatusCard(
                    icon: Icons.account_balance_wallet_outlined,
                    title: '${viewModel.ledgers.length} 个账本',
                    description: viewModel.ledgers
                        .map((ledger) => ledger.name)
                        .join('、'),
                  ),
                  const SizedBox(height: 32),
                  FilledButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.upload_file_outlined),
                    label: Text('微信账单导入将在下一阶段接入'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
