import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:moneyseen_api_contracts/moneyseen_api_contracts.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final body = await context.request.json() as Map<String, Object?>;
    final request = ClassificationBatchRequest.fromJson(body);

    if (request.transactions.isEmpty || request.transactions.length > 50) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: const ApiError(
          code: 'invalid_batch_size',
          message: 'A classification batch must contain 1 to 50 transactions.',
        ).toJson(),
      );
    }

    return Response.json(
      statusCode: HttpStatus.notImplemented,
      body: const ApiError(
        code: 'classification_not_configured',
        message: 'The model provider will be connected in Phase 2.',
      ).toJson(),
    );
  } on Object {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const ApiError(
        code: 'invalid_request',
        message: 'The request body does not match schema version 1.',
      ).toJson(),
    );
  }
}
