// ignore_for_file: lines_longer_than_80_chars, public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'order_models.g.dart';

@JsonSerializable()
class OrderModel {
  OrderModel(
    this.id,
    this.userId,
    this.pizzaId,
    this.address,
    this.phoneNumber,
    this.status,
  );

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  final int id;
  final String? userId;
  final String? pizzaId;
  final String? address;
  final String? phoneNumber;
  final String? status;
}


/*
OrderModel $OrderModelFromJson(Map<String, dynamic> json) {
  return OrderModel(
    json['user_id'] as String?,
    json['pizza_id'] as String?,
    json['address'] as String?,
    json['phone_number'] as String?,
    json['status'] as String?,
    json['id'] as int,
  );
}

Map<String, dynamic> $OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'pizza_id': instance.pizzaId,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'status': instance.status,
      'id': instance.id,
    };
*/
