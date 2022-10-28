import 'dart:convert';

class MessageModel {
  MessageModel({
    required this.message,
    required this.date,
    required this.sender,
    required this.sent,
  });

  final String message;
  final DateTime date;
  final String sender;
  //TODO:For testing purpose
  final bool sent;

  factory MessageModel.fromRawJson(String str) => MessageModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
    message: json["message"],
    date: DateTime.parse(json["date"]),
    sender: json["sender"],
    sent: json["sent"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "sender": sender,
    "sent": sent,
  };
}
