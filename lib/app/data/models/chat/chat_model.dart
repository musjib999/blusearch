import 'dart:convert';

class ChatModel {
  ChatModel({
    required this.message,
    required this.profilePic,
    required this.name,
  });

  final String message;
  final String profilePic;
  final String name;

  factory ChatModel.fromRawJson(String str) => ChatModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
    message: json["message"],
    profilePic: json["profilePic"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "profilePic": profilePic,
    "name": name,
  };
}
