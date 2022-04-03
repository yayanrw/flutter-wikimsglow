// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:equatable/equatable.dart';
import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse extends Equatable {
  const LoginResponse({
    required this.status,
    required this.message,
    this.data,
  });

  final bool status;
  final String message;
  final Data? data;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };

  @override
  List<Object> get props => [status, message, data!];
}

class Data extends Equatable {
  const Data({
    required this.username,
    required this.email,
    required this.name,
    required this.exp,
    required this.token,
  });

  final String username;
  final String email;
  final String name;
  final DateTime exp;
  final String token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        username: json["username"],
        email: json["email"],
        name: json["name"],
        exp: DateTime.parse(json["exp"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "name": name,
        "exp": exp.toIso8601String(),
        "token": token,
      };

  @override
  List<Object> get props => [username, email, name, exp, token];
}
