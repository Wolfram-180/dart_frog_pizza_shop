// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pizza_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PizzaModel _$PizzaModelFromJson(Map<String, dynamic> json) => PizzaModel(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
      description: json['description'] as String?,
      id: json['id'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$PizzaModelToJson(PizzaModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
      'size': instance.size,
    };
