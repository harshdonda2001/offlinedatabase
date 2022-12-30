import 'package:meta/meta.dart';
import 'dart:convert';

class CommentsModel {
  CommentsModel({
    required this.id,
    required this.postId,
    required this.name,
    required this.email,
    required this.body,
  });

  int id;
  int postId;
  String name;
  String email;
  String body;

  factory CommentsModel.fromRawJson(String str) =>
      CommentsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommentsModel.fromJson(Map<String, dynamic> json) => CommentsModel(
        id: json["id"],
        postId: json["post_id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "post_id": postId,
        "name": name,
        "email": email,
        "body": body,
      };
}
