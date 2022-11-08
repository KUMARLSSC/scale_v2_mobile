import 'package:flutter/material.dart';
import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/image_shared.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/services/api_service.dart';
import 'package:scaleindia/ui/Authentication/authentication_viewmodel.dart';
import 'package:scaleindia/ui/Authentication/email.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

import 'email_form.dart';

class Password extends StatelessWidget with $LoginView {
  Password({
    Key? key,
    this.email,
  }) : super(key: key);

  final Email? email;

  final _apiService = locator<ApiService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              backgroundColor: whiteTextColor,
              resizeToAvoidBottomInset: false,
              body: ConnectionCheck(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 40.h,
                        padding: EdgeInsets.only(top: 20.sp),
                        child: ListView(
                          children: [
                            Center(
                              child: Image.asset(
                                blackLogo,
                                width: 38.w,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(password),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      verticalSpaceLarge,
                      Text(
                        "HI Candidate",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your password',
                            labelStyle: TextStyle(
                                color: Color(0xff716363),
                                fontSize: 13.sp,
                                fontFamily: 'Ubuntu'),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: blueTextColor, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                          controller: passwordController,
                        ),
                      ),
                      verticalSpaceMedium,
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              "Don’t know password ?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff676161),
                                  fontSize: 9.sp,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Forgot Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                      verticalSpaceMedium,
                      CustomButton(6, 30, customButtonGradientColor,
                          loading: model.isBusy,
                          title: 'Login', onPressed: () async {
                        final SharedPreferences sharedPreferences =
                            await SharedPreferences.getInstance();
                        sharedPreferences.setString(
                            'email', _apiService.loadEmail);
                        sharedPreferences.setString(
                            'role', _apiService.loadRole);
                        model.login(
                            email: _apiService.loadEmail,
                            password: passwordController.text);
                      }),
                      verticalSpaceLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Powered by",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff7e7a7a),
                                fontSize: 12.sp,
                                fontFamily: 'Ubuntu'),
                          ),
                          Image(
                            fit: BoxFit.fitWidth,
                            width: 10.w,
                            height: 3.h,
                            image: AssetImage('assets/images/lssc.png'),
                          ),
                        ],
                      ),
                      Text(
                        "Version 2.0",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff867f7f),
                            fontSize: 12.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => AuthenticationViewModel());
  }
}
