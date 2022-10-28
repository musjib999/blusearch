import 'dart:convert';

class InvestmentSuggestionModel {
  InvestmentSuggestionModel({
    required this.busniessName,
    required this.amount,
    required this.status,
    required this.description,
    required this.businessType,
    required this.profit,
    required this.investors,
    required this.image,
  });

  final String busniessName;
  final double amount;
  final String status;
  final String description;
  final String businessType;
  final String profit;
  final int investors;
  final String image;

  factory InvestmentSuggestionModel.fromRawJson(String str) => InvestmentSuggestionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InvestmentSuggestionModel.fromJson(Map<String, dynamic> json) => InvestmentSuggestionModel(
    busniessName: json["busniessName"],
    amount: json["amount"].toDouble(),
    status: json["status"],
    description: json["description"],
    businessType: json["businessType"],
    profit: json["profit"],
    investors: json["investors"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "busniessName": busniessName,
    "amount": amount,
    "status": status,
    "description": description,
    "businessType": businessType,
    "profit": profit,
    "investors": investors,
    "image": image,
  };
}
