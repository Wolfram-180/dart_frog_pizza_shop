// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      json['userId'] as String?,
      json['pizzaId'] as String?,
      json['address'] as String?,
      json['phoneNumber'] as String?,
      json['status'] as String?,
      json['id'] as int,
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'pizzaId': instance.pizzaId,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'status': instance.status,
      'id': instance.id,
    };
