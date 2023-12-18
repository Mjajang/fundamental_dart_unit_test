import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class JsonModel {
  int id;
  int userId;
  String title;
  String body;

  JsonModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'title': title,
      'body': body,
    };
  }

  factory JsonModel.fromMap(Map<String, dynamic> map) {
    return JsonModel(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory JsonModel.fromJson(String source) =>
      JsonModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
