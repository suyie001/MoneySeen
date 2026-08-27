// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  id: json['id'] as String,
  ledgerId: json['ledgerId'] as String,
  accountId: json['accountId'] as String,
  occurredAt: DateTime.parse(json['occurredAt'] as String),
  rawDirection: $enumDecode(_$RawDirectionEnumMap, json['rawDirection']),
  nature: $enumDecode(_$TransactionNatureEnumMap, json['nature']),
  amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
  rawCounterparty: json['rawCounterparty'] as String,
  description: json['description'] as String,
  classificationStatus: $enumDecode(
    _$ClassificationStatusEnumMap,
    json['classificationStatus'],
  ),
  classificationSource: $enumDecode(
    _$ClassificationSourceEnumMap,
    json['classificationSource'],
  ),
  categoryId: json['categoryId'] as String?,
  projectId: json['projectId'] as String?,
  tagIds:
      (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ledgerId': instance.ledgerId,
      'accountId': instance.accountId,
      'occurredAt': instance.occurredAt.toIso8601String(),
      'rawDirection': _$RawDirectionEnumMap[instance.rawDirection]!,
      'nature': _$TransactionNatureEnumMap[instance.nature]!,
      'amount': instance.amount,
      'rawCounterparty': instance.rawCounterparty,
      'description': instance.description,
      'classificationStatus':
          _$ClassificationStatusEnumMap[instance.classificationStatus]!,
      'classificationSource':
          _$ClassificationSourceEnumMap[instance.classificationSource]!,
      'categoryId': instance.categoryId,
      'projectId': instance.projectId,
      'tagIds': instance.tagIds,
    };

const _$RawDirectionEnumMap = {
  RawDirection.inflow: 'inflow',
  RawDirection.outflow: 'outflow',
  RawDirection.neutral: 'neutral',
  RawDirection.unknown: 'unknown',
};

const _$TransactionNatureEnumMap = {
  TransactionNature.expense: 'expense',
  TransactionNature.income: 'income',
  TransactionNature.transfer: 'transfer',
  TransactionNature.refund: 'refund',
  TransactionNature.reimbursement: 'reimbursement',
  TransactionNature.loanOut: 'loanOut',
  TransactionNature.loanIn: 'loanIn',
  TransactionNature.loanRepayment: 'loanRepayment',
  TransactionNature.other: 'other',
};

const _$ClassificationStatusEnumMap = {
  ClassificationStatus.confirmed: 'confirmed',
  ClassificationStatus.suggested: 'suggested',
  ClassificationStatus.pending: 'pending',
};

const _$ClassificationSourceEnumMap = {
  ClassificationSource.manual: 'manual',
  ClassificationSource.rule: 'rule',
  ClassificationSource.system: 'system',
  ClassificationSource.llm: 'llm',
  ClassificationSource.none: 'none',
};
