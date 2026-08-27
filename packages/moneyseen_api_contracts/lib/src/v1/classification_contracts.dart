import 'package:freezed_annotation/freezed_annotation.dart';

part 'classification_contracts.freezed.dart';
part 'classification_contracts.g.dart';

@freezed
abstract class ClassificationBatchRequest with _$ClassificationBatchRequest {
  const factory ClassificationBatchRequest({
    @Default(1) int schemaVersion,
    required String locale,
    required String currency,
    required ClassificationTaxonomy taxonomy,
    required List<TransactionSummary> transactions,
  }) = _ClassificationBatchRequest;

  factory ClassificationBatchRequest.fromJson(Map<String, Object?> json) =>
      _$ClassificationBatchRequestFromJson(json);
}

@freezed
abstract class ClassificationTaxonomy with _$ClassificationTaxonomy {
  const factory ClassificationTaxonomy({
    @Default(<TaxonomyOption>[]) List<TaxonomyOption> categories,
    @Default(<TaxonomyOption>[]) List<TaxonomyOption> projects,
    @Default(<TaxonomyOption>[]) List<TaxonomyOption> tags,
  }) = _ClassificationTaxonomy;

  factory ClassificationTaxonomy.fromJson(Map<String, Object?> json) =>
      _$ClassificationTaxonomyFromJson(json);
}

@freezed
abstract class TaxonomyOption with _$TaxonomyOption {
  const factory TaxonomyOption({required String id, required String name}) =
      _TaxonomyOption;

  factory TaxonomyOption.fromJson(Map<String, Object?> json) =>
      _$TaxonomyOptionFromJson(json);
}

@freezed
abstract class TransactionSummary with _$TransactionSummary {
  const factory TransactionSummary({
    required String clientRef,
    required String direction,
    required int amountMinor,
    required String transactionType,
    required String counterparty,
    required String description,
    String? historySummary,
  }) = _TransactionSummary;

  factory TransactionSummary.fromJson(Map<String, Object?> json) =>
      _$TransactionSummaryFromJson(json);
}

@freezed
abstract class ClassificationBatchResponse with _$ClassificationBatchResponse {
  const factory ClassificationBatchResponse({
    required int schemaVersion,
    required String model,
    required String promptVersion,
    required List<ClassificationResult> results,
  }) = _ClassificationBatchResponse;

  factory ClassificationBatchResponse.fromJson(Map<String, Object?> json) =>
      _$ClassificationBatchResponseFromJson(json);
}

@freezed
abstract class ClassificationResult with _$ClassificationResult {
  const factory ClassificationResult({
    required String clientRef,
    required String nature,
    String? categoryId,
    String? projectId,
    @Default(<String>[]) List<String> tagIds,
    required double confidence,
    required String reason,
    required bool needsReview,
  }) = _ClassificationResult;

  factory ClassificationResult.fromJson(Map<String, Object?> json) =>
      _$ClassificationResultFromJson(json);
}
