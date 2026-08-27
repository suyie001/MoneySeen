import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part 'money.freezed.dart';
part 'money.g.dart';

@freezed
abstract class Money with _$Money {
  const factory Money({required int minorUnits, required Currency currency}) =
      _Money;

  factory Money.fromJson(Map<String, Object?> json) => _$MoneyFromJson(json);
}

extension MoneyOperations on Money {
  Money operator +(Money other) {
    _requireSameCurrency(other);
    return Money(minorUnits: minorUnits + other.minorUnits, currency: currency);
  }

  Money operator -(Money other) {
    _requireSameCurrency(other);
    return Money(minorUnits: minorUnits - other.minorUnits, currency: currency);
  }

  bool get isNegative => minorUnits < 0;

  void _requireSameCurrency(Money other) {
    if (currency != other.currency) {
      throw ArgumentError('Money operations require matching currencies.');
    }
  }
}
