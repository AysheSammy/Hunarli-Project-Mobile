import 'package:meta/meta.dart';
import 'dart:convert';

List<PostsData> postsDataFromJson(String str) => List<PostsData>.from(json.decode(str).map((x) => PostsData.fromJson(x)));

String postsDataToJson(List<PostsData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostsData {
    PostsData({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    int userId;
    int id;
    String title;
    String body;

    factory PostsData.fromJson(Map<String, dynamic> json) => PostsData(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        body: json["body"] == null ? null : json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId == null ? null : userId,
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "body": body == null ? null : body,
    };
}
