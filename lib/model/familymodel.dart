// To parse this JSON data, do
//
//     final family = familyFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Family {
  Family({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.status,
  });

  int id;
  String name;
  String email;
  String gender;
  String status;

  factory Family.fromRawJson(String str) => Family.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Family.fromJson(Map<String, dynamic> json) => Family(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        gender: json["gender"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
        "status": status,
      };
}
