import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/image_shared.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Authentication/authentication_viewmodel.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import 'email_form.dart';

// ignore: must_be_immutable
class Email extends StatelessWidget with $LoginView {
  Email({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationViewModel>.reactive(
        builder: (context, model, child) => WillPopScope(
              onWillPop: () => model.close(),
              child: Scaffold(
                backgroundColor: whiteTextColor,
                key: key,
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
                                  splashLogo,
                                  width: 38.w,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(emailPageImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpaceLarge,
                        verticalSpaceMedium,
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 40),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Enter your mail ID',
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
                            controller: emailController,
                          ),
                        ),
                        verticalSpaceLarge,
                        InkWell(
                          onTap: () => model.navigateToUserRoleSelecting(),
                          child: Column(
                            children: [
                              Text(
                                "Don’t have an account ?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff676161),
                                    fontSize: 9.sp,
                                    fontFamily: 'Ubuntu'),
                              ),
                              Text(
                                "Create  Account",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16.sp,
                                    fontFamily: 'Ubuntu'),
                              ),
                            ],
                          ),
                        ),
                        verticalSpaceMedium,
                        CustomButton(6, 30, customButtonGradientColor,
                            loading: model.isBusy,
                            title: 'NEXT', onPressed: () {
                          model.navigateTocandidate();
                        }),
                        verticalSpaceLarge,
                        verticalSpaceLarge,
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
                              image: AssetImage(lssclogo),
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
            ),
        viewModelBuilder: () => AuthenticationViewModel());
  }
}
