// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ledger _$LedgerFromJson(Map<String, dynamic> json) => _Ledger(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$LedgerTypeEnumMap, json['type']),
  currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$LedgerToJson(_Ledger instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': _$LedgerTypeEnumMap[instance.type]!,
  'currency': _$CurrencyEnumMap[instance.currency]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

const _$LedgerTypeEnumMap = {
  LedgerType.personal: 'personal',
  LedgerType.family: 'family',
  LedgerType.business: 'business',
  LedgerType.custom: 'custom',
};

const _$CurrencyEnumMap = {Currency.cny: 'cny', Currency.usd: 'usd'};
