// To parse this JSON data, do
//
//     final usersChange = usersChangeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<UsersChange> usersChangeFromJson(String str) => List<UsersChange>.from(json.decode(str).map((x) => UsersChange.fromJson(x)));

String usersChangeToJson(List<UsersChange> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UsersChange {
    UsersChange({
        required this.id,
        required this.name,
        required this.username,
        required this.phone,
        required this.password,
    });

    int id;
    String name;
    String username;
    String phone;
    String password;

    factory UsersChange.fromJson(Map<String, dynamic> json) => UsersChange(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        username: json["username"] == null ? null : json["username"],
        phone: json["phone"] == null ? null : json["phone"],
        password: json["password"] == null ? null : json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "username": username == null ? null : username,
        "phone": phone == null ? null : phone,
        "password": password == null ? null : password,
    };
}
