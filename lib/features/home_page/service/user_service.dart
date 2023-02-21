import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user_model.dart';

class UserService {
  final String url = "http://192.168.56.1:8080/api/post";
  Future<UsersModel?> fetchUsers() async {
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var jsonBody = UsersModel.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      print("İstek başarısız oldu => ${res.statusCode}");
    }
  }
}
