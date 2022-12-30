// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class PostModel {
  PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  int id;
  int userId;
  String title;
  String body;

  factory PostModel.fromRawJson(String str) =>
      PostModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json["id"],
        userId: json["user_id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "title": title,
        "body": body,
      };
}
