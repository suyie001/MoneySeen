import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    required String id,
    required String ledgerId,
    required String name,
    required AccountType type,
    required Currency currency,
    String? institution,
    String? maskedIdentifier,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}
