import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://33201b8e0685.ngrok.io/scaleindia2';

  late String loadEmail;
  late String loadRole;

  // Find Email Functionality
  Future findEmail({
    required final String email,
  }) async {
    try {
      final body = {"email": email};
      final res = await http.post(Uri.parse("$baseUrl/findEmail"),
          body: json.encode(body),
          headers: {"Content-Type": "application/json"},
          encoding: Encoding.getByName("utf-8"));
      Map<String, dynamic> data = await json.decode(res.body);
      loadEmail = data['email'];
      loadRole = data['roles'].toString();

      print(loadRole);
      if (res.statusCode == 200) {
        return res.body;
      }
    } catch (e) {
      print(e);
    }
  }

//Login Functionality
  Future login(
      {required final String email, required final String password}) async {
    try {
      final body = {"email": email, "password": password};
      final res = await http.post(Uri.parse("$baseUrl/signin"),
          body: json.encode(body),
          headers: {"Content-Type": "application/json"},
          encoding: Encoding.getByName("utf-8"));
      print(res.body);
      if (res.statusCode == 200) return res.body;
    } catch (e) {
      print(e);
    }
  }

// Login Function
  Future registration(
      {required final String email,
      required final String password,
      required final String username,
      required final String fathername,
      required final String mobile,
      required final String address,
      required final List<String> roles}) async {
    try {
      final body = {
        "email": email,
        "password": password,
        "username": username,
        "fathername": fathername,
        "mobile": mobile,
        "address": address,
        "roles": roles
      };
      final res = await http.post(Uri.parse("$baseUrl/signup"),
          body: json.encode(body),
          headers: {"Content-Type": "application/json"},
          encoding: Encoding.getByName("utf-8"));
      print(res.body);
      if (res.statusCode == 200) return res.body;
    } catch (e) {
      print(e);
    }
  }
}
