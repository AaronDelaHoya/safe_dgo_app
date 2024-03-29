import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import 'package:safe_dgo_app/Users/Model/user_model.dart';

class UserProviders {
  Client client = Client();

  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': '<Your token>'
  };

  final _url = 'https://safe-app.now.sh/api/customers/';
  Future<List<UserModel>> fetchTodoList() async {
    print('panggil data');

    // Peticion GET
    final response = await client.get(_url);
    print(response.body);
    if (response.statusCode == 200) {
      // print(response.body.length);
      return compute(userFromJson, response.body);
      // return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to Load');
    }
  }

  // Peticion POST
  Future createUser(name, password) async {

    var tyson = {'name': name, 'password': password};
    String jsonTyson = jsonEncode(tyson);

    final response = await client.post(_url, headers: {"Content-Type":"application/json"} ,body: jsonTyson);
    print(response.body);
    print(tyson);
    if (response.statusCode == 201) {
      return response;
    } else {
      throw Exception('Failed to add data');
    }
  }

  // Peticion PUT
  Future updateTodo(ids) async {
    // print('$_url$ids/update');
    final response = await client.put("$_url$ids/update", body: {'done': "true"});
    if (response.statusCode == 200) {
      print('berhasil di update');
      return response;
    } else {
      throw Exception('Failed to update data');
    }
  }
}