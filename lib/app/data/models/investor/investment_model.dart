import 'dart:convert';

class InvestmentModel {
  InvestmentModel({
    required this.busniessName,
    required this.amount,
    required this.status,
    required this.description,
    required this.businessType,
    required this.profit,
    required this.image,
    required this.units,
    this.maturityDate,
  });

  final String busniessName;
  final double amount;
  final String status;
  final String description;
  final String businessType;
  final String profit;
  final String image;
  final int units;
  final DateTime? maturityDate;

  factory InvestmentModel.fromRawJson(String str) => InvestmentModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InvestmentModel.fromJson(Map<String, dynamic> json) => InvestmentModel(
    busniessName: json["busniessName"],
    amount: json["amount"].toDouble(),
    status: json["status"],
    description: json["description"],
    businessType: json["businessType"],
    profit: json["profit"],
    image: json["image"],
    units: json["units"],
    maturityDate: json["maturityDate"] ?? DateTime.now(),
  );

  Map<String, dynamic> toJson() => {
    "busniessName": busniessName,
    "amount": amount,
    "status": status,
    "description": description,
    "businessType": businessType,
    "profit": profit,
    "image": image,
    "units": units,
    "maturityDate": maturityDate ?? DateTime.now(),
  };
}
