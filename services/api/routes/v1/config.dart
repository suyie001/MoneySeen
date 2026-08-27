import 'package:dart_frog/dart_frog.dart';
import 'package:moneyseen_api_contracts/moneyseen_api_contracts.dart';

Response onRequest(RequestContext context) {
  const config = RuntimeConfig(
    apiVersion: 1,
    classificationSchemaVersion: 1,
    maxClassificationBatchSize: 50,
    classificationEnabled: false,
  );

  return Response.json(body: config.toJson());
}
