import 'package:flutter/cupertino.dart';
import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/services/api_service.dart';

class MainAuthentication {
  final _apiservice = locator<ApiService>();

  //Login
  Future<bool> login({
    @required String? email,
    @required String? password,
  }) async {
    var auth = await _apiservice.login(email: email!, password: password!);
    var hasUser = auth != null;
    return hasUser;
  }

  // Email Existing
  Future<bool> findEmail({
    @required String? email,
  }) async {
    var auth = await _apiservice.findEmail(
      email: email!,
    );
    var hasUser = auth != null;
    return hasUser;
  }

  //Regsitration
  Future<bool> registration(
      {required final String? email,
      required final String? password,
      required final String? username,
      required final String? fathername,
      required final String? mobile,
      required final String? address,
      required final List<String>? roles}) async {
    var reg = await _apiservice.registration(
        email: email!,
        password: password!,
        username: username!,
        fathername: fathername!,
        mobile: mobile!,
        address: address!,
        roles: roles!);
    var hasUser = reg != null;

    return hasUser;
  }
}
