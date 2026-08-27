import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part 'ledger.freezed.dart';
part 'ledger.g.dart';

@freezed
abstract class Ledger with _$Ledger {
  const factory Ledger({
    required String id,
    required String name,
    required LedgerType type,
    required Currency currency,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Ledger;

  factory Ledger.fromJson(Map<String, Object?> json) => _$LedgerFromJson(json);
}
