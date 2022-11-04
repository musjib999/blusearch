import 'dart:convert';

class CreditCardModel {
  CreditCardModel({
    required this.name,
   required this.bank,
   required this.number,
   required this.month,
   required this.year,
  });

  final  String bank, name;
  final int number;
  final int month;
  final int year;

  factory CreditCardModel.fromRawJson(String str) => CreditCardModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreditCardModel.fromJson(Map<String, dynamic> json) => CreditCardModel(
    number: json["number"],
    month: json["month"],
    year: json["year"],
    bank: json["bank"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "month": month,
    "year": year,
    "bank": bank,
    "name": name,
  };
}
