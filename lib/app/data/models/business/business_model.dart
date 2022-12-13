import 'dart:convert';

class BusinessModel {
  BusinessModel({
    required this.name,
    required this.email,
    required this.image,
  });


  final String name, email, image;

  factory BusinessModel.fromRawJson(String str) => BusinessModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BusinessModel.fromJson(Map<String, dynamic> json) => BusinessModel(
    name: json['name'],
    email: json['email'],
    image: json['image'],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "image": image,
  };
}
