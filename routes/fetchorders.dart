// ignore_for_file: lines_longer_than_80_chars

import 'package:dart_frog/dart_frog.dart';

//import 'package:dart_frog_pizza_shop/models/order_models.dart';
import '../utils/constant.dart';

Response onRequest(RequestContext context) {
  //check if the request is a GET request
  if (context.request.method == HttpMethod.get) {
    //check if user_id is present
    final params = context.request.uri.queryParameters;
    var userId = 0;
    var isOrdersEmpty = '';

    if (params.containsKey('userId')) {
      userId = int.parse(params['userId'] ?? '0');
      final userOrders = orders.where(
        (element) => element.userId == userId,
      );

      if (userOrders.isEmpty) {
        isOrdersEmpty = 'isOrdersEmpty.isEmpty';
      }

      if (userOrders.isNotEmpty) {
        return Response.json(
          body: {
            'userId': userId,
            'data': userOrders.toList(),
          },
        );
      }
    }
    return Response.json(
      body: {
        'message':
            'User id = ${userId.runtimeType} $userId not found in Orders : $isOrdersEmpty',
      },
    );
  }
  return Response.json(
    statusCode: 404,
    body: {'message': 'Method not allowed'},
  );
}
