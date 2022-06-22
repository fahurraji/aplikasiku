// To parse this JSON data, do
//
//     final auth_model = auth_modelFromJson(jsonString);

import 'dart:convert';

auth_model auth_modelFromJson(String str) => auth_model.fromJson(json.decode(str));

String auth_modelToJson(auth_model data) => json.encode(data.toJson());

class auth_model {
    auth_model({
        this.status,
        this.message,
        this.username,
        this.email,
    });

    int status;
    String message;
    String username;
    String email;

    factory auth_model.fromJson(Map<String, dynamic> json) => auth_model(
        status: json["status"],
        message: json["message"],
        username: json["username"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "username": username,
        "email": email,
    };
}

/*
class Data {
  String id;
  String username;
  String email;

  Data({this.id, this.username, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id_user'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_user'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    return data;
  }
}
*/
