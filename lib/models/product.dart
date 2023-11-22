// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Model model;
  int pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  String product;
  String price;
  int amount;
  String description;
  int user;
  String image;

  Fields({
    required this.product,
    required this.price,
    required this.amount,
    required this.description,
    required this.user,
    required this.image,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        product: json["product"],
        price: json["price"],
        amount: json["amount"],
        description: json["description"],
        user: json["user"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "product": product,
        "price": price,
        "amount": amount,
        "description": description,
        "user": user,
        "image": image,
      };
}

enum Model { MAIN_PRODUCT }

final modelValues = EnumValues({"main.product": Model.MAIN_PRODUCT});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
