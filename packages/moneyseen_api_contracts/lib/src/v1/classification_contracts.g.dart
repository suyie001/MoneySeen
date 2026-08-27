// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classification_contracts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassificationBatchRequest _$ClassificationBatchRequestFromJson(
  Map<String, dynamic> json,
) => _ClassificationBatchRequest(
  schemaVersion: (json['schemaVersion'] as num?)?.toInt() ?? 1,
  locale: json['locale'] as String,
  currency: json['currency'] as String,
  taxonomy: ClassificationTaxonomy.fromJson(
    json['taxonomy'] as Map<String, dynamic>,
  ),
  transactions: (json['transactions'] as List<dynamic>)
      .map((e) => TransactionSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ClassificationBatchRequestToJson(
  _ClassificationBatchRequest instance,
) => <String, dynamic>{
  'schemaVersion': instance.schemaVersion,
  'locale': instance.locale,
  'currency': instance.currency,
  'taxonomy': instance.taxonomy.toJson(),
  'transactions': instance.transactions.map((e) => e.toJson()).toList(),
};

_ClassificationTaxonomy _$ClassificationTaxonomyFromJson(
  Map<String, dynamic> json,
) => _ClassificationTaxonomy(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => TaxonomyOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <TaxonomyOption>[],
  projects:
      (json['projects'] as List<dynamic>?)
          ?.map((e) => TaxonomyOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <TaxonomyOption>[],
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => TaxonomyOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <TaxonomyOption>[],
);

Map<String, dynamic> _$ClassificationTaxonomyToJson(
  _ClassificationTaxonomy instance,
) => <String, dynamic>{
  'categories': instance.categories.map((e) => e.toJson()).toList(),
  'projects': instance.projects.map((e) => e.toJson()).toList(),
  'tags': instance.tags.map((e) => e.toJson()).toList(),
};

_TaxonomyOption _$TaxonomyOptionFromJson(Map<String, dynamic> json) =>
    _TaxonomyOption(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$TaxonomyOptionToJson(_TaxonomyOption instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_TransactionSummary _$TransactionSummaryFromJson(Map<String, dynamic> json) =>
    _TransactionSummary(
      clientRef: json['clientRef'] as String,
      direction: json['direction'] as String,
      amountMinor: (json['amountMinor'] as num).toInt(),
      transactionType: json['transactionType'] as String,
      counterparty: json['counterparty'] as String,
      description: json['description'] as String,
      historySummary: json['historySummary'] as String?,
    );

Map<String, dynamic> _$TransactionSummaryToJson(_TransactionSummary instance) =>
    <String, dynamic>{
      'clientRef': instance.clientRef,
      'direction': instance.direction,
      'amountMinor': instance.amountMinor,
      'transactionType': instance.transactionType,
      'counterparty': instance.counterparty,
      'description': instance.description,
      'historySummary': instance.historySummary,
    };

_ClassificationBatchResponse _$ClassificationBatchResponseFromJson(
  Map<String, dynamic> json,
) => _ClassificationBatchResponse(
  schemaVersion: (json['schemaVersion'] as num).toInt(),
  model: json['model'] as String,
  promptVersion: json['promptVersion'] as String,
  results: (json['results'] as List<dynamic>)
      .map((e) => ClassificationResult.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ClassificationBatchResponseToJson(
  _ClassificationBatchResponse instance,
) => <String, dynamic>{
  'schemaVersion': instance.schemaVersion,
  'model': instance.model,
  'promptVersion': instance.promptVersion,
  'results': instance.results.map((e) => e.toJson()).toList(),
};

_ClassificationResult _$ClassificationResultFromJson(
  Map<String, dynamic> json,
) => _ClassificationResult(
  clientRef: json['clientRef'] as String,
  nature: json['nature'] as String,
  categoryId: json['categoryId'] as String?,
  projectId: json['projectId'] as String?,
  tagIds:
      (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  confidence: (json['confidence'] as num).toDouble(),
  reason: json['reason'] as String,
  needsReview: json['needsReview'] as bool,
);

Map<String, dynamic> _$ClassificationResultToJson(
  _ClassificationResult instance,
) => <String, dynamic>{
  'clientRef': instance.clientRef,
  'nature': instance.nature,
  'categoryId': instance.categoryId,
  'projectId': instance.projectId,
  'tagIds': instance.tagIds,
  'confidence': instance.confidence,
  'reason': instance.reason,
  'needsReview': instance.needsReview,
};
