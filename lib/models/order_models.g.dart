// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      json['id'] as int,
      json['userId'] as String?,
      json['pizzaId'] as String?,
      json['address'] as String?,
      json['phoneNumber'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'pizzaId': instance.pizzaId,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'status': instance.status,
    };
