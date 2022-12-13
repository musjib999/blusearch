import 'dart:convert';

import 'business_model.dart';

class StockModel {
  StockModel({
    required this.amount,
    required this.percentage,
    required this.duration,
    required this.stock,
    required this.business,
  });


  final double amount, percentage;
  final String duration;
  final int stock;
  final BusinessModel business;

  factory StockModel.fromRawJson(String str) => StockModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockModel.fromJson(Map<String, dynamic> json) => StockModel(
   amount: json['amount'],
    percentage: json['percentage'],
    duration: json['duration'],
    stock: json['stock'],
    business: json['business'],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "percentage": percentage,
    "duration": duration,
    "stock": stock,
    "business": business,
  };
}
