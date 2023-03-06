// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'pizza_models.g.dart';

@JsonSerializable()
class PizzaModel {
  PizzaModel({
    this.name,
    this.price,
    this.image,
    this.description,
    this.id,
    this.size,
  });

  factory PizzaModel.fromJson(Map<String, dynamic> json) =>
      _$PizzaModelFromJson(json);

  Map<String, dynamic> toJson() => _$PizzaModelToJson(this);

  final String? name;
  final String? id;
  final int? price;
  final String? image;
  final String? description;
  final int? size;
}


/*
PizzaModel _$PizzaModelFromJson(Map<String, dynamic> json) {
  return PizzaModel(
    name: json['name'] as String?,
    price: json['price'] as int?,
    image: json['image'] as String?,
    description: json['description'] as String?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$PizzaModelToJson(PizzaModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
      'id': instance.id
    };
*/
