import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:front_end_forestlover/src/models/loginModal.dart';
import 'urlService.dart';

class AuthServices {
  Future<String> login(String email, String password) async {
    Map<String, String> headers = {
      
      "Accept": "application/json"
    };
    var resp = await http.post(Uri.parse('http://10.0.2.2:3000/api/auth/login'),
        headers: headers, 
        body: {"correo": email, "password": password});

    if (resp.statusCode == 200) return resp.body;

    return resp.body;
  }
}

final authServices = AuthServices();
