// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cart _$CartFromJson(Map<String, dynamic> json) => _Cart(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  date: json['date'] as String,
  products: (json['products'] as List<dynamic>)
      .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CartToJson(_Cart instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'date': instance.date,
  'products': instance.products,
};

_CartProduct _$CartProductFromJson(Map<String, dynamic> json) => _CartProduct(
  productId: (json['productId'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$CartProductToJson(_CartProduct instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
