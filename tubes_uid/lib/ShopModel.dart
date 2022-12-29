import 'dart:io';

class ShopModel {
  File photo;
  String name;
  String price;
  String description;
  ShopModel(
      {required this.photo,
      required this.name,
      required this.price,
      required this.description});
}
