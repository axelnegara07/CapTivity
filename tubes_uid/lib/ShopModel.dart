import 'dart:ffi';

class ShopModel {
  String productPhoto;
  String name;
  double price;
  String description;
  ShopModel(
      {required this.productPhoto,
      required this.name,
      required this.price,
      required this.description});
}
