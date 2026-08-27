import 'package:moneyseen_domain/moneyseen_domain.dart';

final class ReportSummary {
  const ReportSummary({
    required this.income,
    required this.expense,
    required this.transfer,
    required this.pendingCount,
  });

  final Money income;
  final Money expense;
  final Money transfer;
  final int pendingCount;
}
