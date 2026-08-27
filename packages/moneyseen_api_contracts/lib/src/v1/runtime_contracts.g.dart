// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runtime_contracts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RuntimeConfig _$RuntimeConfigFromJson(Map<String, dynamic> json) =>
    _RuntimeConfig(
      apiVersion: (json['apiVersion'] as num).toInt(),
      classificationSchemaVersion: (json['classificationSchemaVersion'] as num)
          .toInt(),
      maxClassificationBatchSize: (json['maxClassificationBatchSize'] as num)
          .toInt(),
      classificationEnabled: json['classificationEnabled'] as bool,
    );

Map<String, dynamic> _$RuntimeConfigToJson(_RuntimeConfig instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'classificationSchemaVersion': instance.classificationSchemaVersion,
      'maxClassificationBatchSize': instance.maxClassificationBatchSize,
      'classificationEnabled': instance.classificationEnabled,
    };

_ApiError _$ApiErrorFromJson(Map<String, dynamic> json) => _ApiError(
  code: json['code'] as String,
  message: json['message'] as String,
  requestId: json['requestId'] as String?,
);

Map<String, dynamic> _$ApiErrorToJson(_ApiError instance) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'requestId': instance.requestId,
};
