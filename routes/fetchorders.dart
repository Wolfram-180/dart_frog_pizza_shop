import 'package:dart_frog/dart_frog.dart';

import '../utils/constant.dart';

Response onRequest(RequestContext context) {
  //check if the request is a GET request
  if (context.request.method == HttpMethod.get) {
    //check if user_id is present
    final params = context.request.uri.queryParameters;
    if (params.containsKey('user_id')) {
      final userId = params['user_id'];
      final userOrders = orders.where((element) => element.userId == userId);
      if (orders.isNotEmpty) {
        return Response.json(body: {'data': userOrders.toList()});
      }
    }
    return Response.json(body: {'message': 'User id not found'});
  }
  return Response.json(
    statusCode: 404,
    body: {'message': 'Method not allowed'},
  );
}
