// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  id: json['id'] as String,
  ledgerId: json['ledgerId'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$AccountTypeEnumMap, json['type']),
  currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
  institution: json['institution'] as String?,
  maskedIdentifier: json['maskedIdentifier'] as String?,
);

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'id': instance.id,
  'ledgerId': instance.ledgerId,
  'name': instance.name,
  'type': _$AccountTypeEnumMap[instance.type]!,
  'currency': _$CurrencyEnumMap[instance.currency]!,
  'institution': instance.institution,
  'maskedIdentifier': instance.maskedIdentifier,
};

const _$AccountTypeEnumMap = {
  AccountType.wallet: 'wallet',
  AccountType.bank: 'bank',
  AccountType.creditCard: 'creditCard',
  AccountType.cash: 'cash',
  AccountType.other: 'other',
};

const _$CurrencyEnumMap = {Currency.cny: 'cny', Currency.usd: 'usd'};
