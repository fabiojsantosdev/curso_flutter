import 'dart:convert';

class UserModelGet {
  String username;
  String id;
  String zipcode;
  String city;

  UserModelGet({
    required this.username,
    required this.id,
    required this.zipcode,
    required this.city,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'id': id,
      'zipcode': zipcode,
      'city': city,
    };
  }

  factory UserModelGet.fromMap(Map<String, dynamic> map) {
    return UserModelGet(
      username: map['username'],
      id: map['id'],
      zipcode: map['zipcode'],
      city: map['city'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModelGet.fromJson(String source) =>
      UserModelGet.fromMap(json.decode(source));
}
