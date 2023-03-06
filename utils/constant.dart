import 'package:dart_frog_pizza_shop/models/order_models.dart';
import 'package:dart_frog_pizza_shop/models/pizza_models.dart';

List<PizzaModel> pizzas = [
  PizzaModel.fromJson(
    {
      'id': 50,
      'name': 'Baby Bell Peppers',
      'description': 'BELL PEPPERS, WATER, SEA SALT, SUNFLOWER OIL',
      'image': 'https://assets.zumepizza.com/public/7650vx0h.png',
      'size': 24,
      'price': 10
    },
  ),
  PizzaModel.fromJson(
    {
      'id': 6,
      'name': 'Basil',
      'description': 'BASIL LEAVES, WATER, SEA SALT, SUNFLOWER OIL',
      'image': 'https://assets.zumepizza.com/public/9pb5d2k4.png',
      'size': 24,
      'price': 11
    },
  ),
  PizzaModel.fromJson(
    {
      'id': 110,
      'name': 'Daiya Vegan Mozzarella',
      'description':
          'FILTERED WATER, TAPIOCA FLOUR, EXPELLER PRESSED NON-GMO CANOLA AND/OR SAFFLOWER OIL, COCONUT OIL, PEA PROTEIN, SALT, VEGAN NATURAL FLAVOURS, INACTIVE YEAST, VEGETABLE GLYCERIN, XANTHAN GUM, CITRIC ACID, TITANIUM DIOXIDE',
      'price': 12,
      'size': 24,
      'image': 'https://assets.zumepizza.com/public/oo9dpuia.png'
    },
  ),
  PizzaModel.fromJson(
    {
      'id': 74,
      'name': 'Kalamata Olives',
      'description': 'KALAMATA OLIVES, WATER, SEA SALT, SUNFLOWER OIL',
      'image': 'https://assets.zumepizza.com/public/ezuum3ch.png',
      'size': 24,
      'price': 5
    },
  )
];

List<OrderModel> orders = [
  OrderModel.fromJson({
    'id': 1,
    'userId': 1,
    'pizzaId': 6,
    'address': '1234 Main St',
    'phoneNumber': '1234567890',
    'status': 'pending'
  }),
  OrderModel.fromJson({
    'id': 2,
    'userId': 1,
    'pizzaId': 50,
    'address': '1234 Main St',
    'phoneNumber': '1234567890',
    'status': 'pending'
  }),
  OrderModel.fromJson({
    'id': 3,
    'userId': 123,
    'pizzaId': 74,
    'address': '1234 Main St',
    'phoneNumber': '1234567890',
    'status': 'pending'
  }),
];
