import 'dart:convert';

List<UserModel> userFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<UserModel>.from(jsonData.map((x) => UserModel.fromJson(x)));
}

String userToJson(List<UserModel> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class UserModel{

  String name;
  String password;

  UserModel({this.name,this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) => new UserModel(
      password: "password",
      name: "name"
      );

  Map<String, dynamic> toJson() =>{
    "name": name,
    "password" : password
  };

}