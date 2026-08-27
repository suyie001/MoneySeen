import 'package:freezed_annotation/freezed_annotation.dart';

part 'runtime_contracts.freezed.dart';
part 'runtime_contracts.g.dart';

@freezed
abstract class RuntimeConfig with _$RuntimeConfig {
  const factory RuntimeConfig({
    required int apiVersion,
    required int classificationSchemaVersion,
    required int maxClassificationBatchSize,
    required bool classificationEnabled,
  }) = _RuntimeConfig;

  factory RuntimeConfig.fromJson(Map<String, Object?> json) =>
      _$RuntimeConfigFromJson(json);
}

@freezed
abstract class ApiError with _$ApiError {
  const factory ApiError({
    required String code,
    required String message,
    String? requestId,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, Object?> json) =>
      _$ApiErrorFromJson(json);
}
