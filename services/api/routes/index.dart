import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return Response.json(
    body: {
      'service': 'moneyseen-api',
      'status': 'ok',
      'apiVersion': 1,
    },
  );
}
