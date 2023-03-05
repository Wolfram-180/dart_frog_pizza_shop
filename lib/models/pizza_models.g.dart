// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pizza_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PizzaModel _$PizzaModelFromJson(Map<String, dynamic> json) => PizzaModel(
      name: json['name'] as String?,
      price: json['price'] as int?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$PizzaModelToJson(PizzaModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
    };
