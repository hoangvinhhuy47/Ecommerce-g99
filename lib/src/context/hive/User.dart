import 'package:hive/hive.dart';

class User {
  String token;
  String name;
  String password;

  User({required this.token, required this.name, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      token: json['Token'],
      name: json['Name'],
      password: json['PassWord'],
    );
  }
}

@HiveType(typeId: 0)
class HiveUser {
  @HiveField(0)
  String name;

  @HiveField(1)
  String password;

  @HiveField(2)
  String token;

  HiveUser({
    required this.name,
    required this.password,
    required this.token,
  });

  //just like you would decode a json into a model
  factory HiveUser.fromUser(User user) {
    return HiveUser(
        name: user.name, password: user.password, token: user.token);
  }
}
