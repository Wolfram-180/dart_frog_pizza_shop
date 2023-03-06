import 'package:dart_frog/dart_frog.dart';

import 'package:dart_frog_pizza_shop/models/pizza_models.dart';
import '../utils/constant.dart';

Response onRequest(RequestContext context) {
  //check if the request is a GET request
  if (context.request.method == HttpMethod.get) {
    //check if query parameter is present
    final params = context.request.uri.queryParameters;

    if (params.containsKey('id')) {
      //return the pizza with the id
      final id = int.parse(params['id'] ?? '0');
      // ignore: require_trailing_commas
      final pizza = pizzas.firstWhere(
        (element) => element.id == id,
        orElse: () => PizzaModel.fromJson({}),
      );
      if (pizza.id != null) {
        return Response.json(body: {'data': pizza});
      }
      return Response.json(
        statusCode: 404,
        body: {'message': 'Pizza not found'},
      );
    }
    return Response.json(body: {'data': pizzas});
  }

  return Response.json(
    statusCode: 404,
    body: {'message': 'Method not allowed'},
  );
}
