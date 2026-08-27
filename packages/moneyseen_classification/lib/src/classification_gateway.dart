import 'package:moneyseen_api_contracts/moneyseen_api_contracts.dart';

abstract interface class ClassificationGateway {
  Future<ClassificationBatchResponse> classify(
    ClassificationBatchRequest request,
  );
}
