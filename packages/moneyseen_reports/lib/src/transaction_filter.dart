import 'package:moneyseen_domain/moneyseen_domain.dart';

final class TransactionFilter {
  const TransactionFilter({
    this.startAt,
    this.endAt,
    this.natures = const {},
    this.classificationStatuses = const {},
  });

  final DateTime? startAt;
  final DateTime? endAt;
  final Set<TransactionNature> natures;
  final Set<ClassificationStatus> classificationStatuses;

  bool matches(Transaction transaction) {
    if (startAt case final start? when transaction.occurredAt.isBefore(start)) {
      return false;
    }
    if (endAt case final end? when !transaction.occurredAt.isBefore(end)) {
      return false;
    }
    if (natures.isNotEmpty && !natures.contains(transaction.nature)) {
      return false;
    }
    if (classificationStatuses.isNotEmpty &&
        !classificationStatuses.contains(transaction.classificationStatus)) {
      return false;
    }
    return true;
  }
}
