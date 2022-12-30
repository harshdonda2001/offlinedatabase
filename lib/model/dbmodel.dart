// To parse this JSON data, do
//
//     final dbmodel = dbmodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Dbmodel {
  Dbmodel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  int postId;
  int id;
  String name;
  String email;
  String body;

  factory Dbmodel.fromRawJson(String str) => Dbmodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dbmodel.fromJson(Map<String, dynamic> json) => Dbmodel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
