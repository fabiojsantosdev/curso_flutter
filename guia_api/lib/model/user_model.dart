import 'dart:convert';

class UserModel {
  String name;
  String id;
  String avatar;

  UserModel({
    required this.name,
    required this.id,
    required this.avatar,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'avatar': avatar,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      id: map['id'],
      avatar: map['avatar'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
