// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Money _$MoneyFromJson(Map<String, dynamic> json) => _Money(
  minorUnits: (json['minorUnits'] as num).toInt(),
  currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
);

Map<String, dynamic> _$MoneyToJson(_Money instance) => <String, dynamic>{
  'minorUnits': instance.minorUnits,
  'currency': _$CurrencyEnumMap[instance.currency]!,
};

const _$CurrencyEnumMap = {Currency.cny: 'cny', Currency.usd: 'usd'};
