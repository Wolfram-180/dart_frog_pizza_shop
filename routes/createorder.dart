// ignore_for_file: avoid_dynamic_calls, noop_primitive_operations

import 'package:dart_frog/dart_frog.dart';

import 'package:dart_frog_pizza_shop/models/order_models.dart';
import '../utils/constant.dart';

Future<Response> onRequest(RequestContext context) async {
  //check if the request is a POST request
  if (context.request.method == HttpMethod.post) {
    //check if headers is application/json
    final contentType = context.request.headers['Content-Type'];
    if (contentType == 'application/json') {
      //check if body is present
      final body = await context.request.json();
      if (body != null &&
          body['pizzaId'] != null &&
          body['userId'] != null &&
          body['address'] != null &&
          body['phoneNumber'] != null) {
        //check valid pizza id
        final isValidPizzaId = pizzas.any(
          (element) =>
              element.id ==
              (int.tryParse(
                    body['pizzaId'].toString(),
                  ) ??
                  0),
        );
        // pizzas.any((element) => element.id == int.parse(body['pizzaId']) ?? '0'));

        if (isValidPizzaId) {
          orders.add(
            OrderModel.fromJson({
              'id': DateTime.now().millisecondsSinceEpoch.toInt(),
              'pizzaId': body['pizzaId'],
              'userId': body['userId'],
              'address': body['address'],
              'phoneNumber': body['phoneNumber'],
            }),
          );
          return Response.json(
            statusCode: 201,
            body: {
              'message':
                  'Order created successfully with order id: ${orders.last.id}'
            },
          );
        } else {
          return Response.json(
            statusCode: 404,
            body: {'message': 'Invalid pizza id'},
          );
        }
      } else {
        return Response.json(
          statusCode: 404,
          body: {'message': 'All fields are required'},
        );
      }
    }

    return Response.json(
      statusCode: 404,
      body: {'message': 'Content-Type must be application/json'},
    );
  }
  return Response.json(
    statusCode: 404,
    body: {'message': 'Method not allowed'},
  );
}
