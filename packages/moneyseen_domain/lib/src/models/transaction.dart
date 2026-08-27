import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';
import 'money.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required String ledgerId,
    required String accountId,
    required DateTime occurredAt,
    required RawDirection rawDirection,
    required TransactionNature nature,
    required Money amount,
    required String rawCounterparty,
    required String description,
    required ClassificationStatus classificationStatus,
    required ClassificationSource classificationSource,
    String? categoryId,
    String? projectId,
    @Default(<String>[]) List<String> tagIds,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, Object?> json) =>
      _$TransactionFromJson(json);
}
