import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Registration/registration_viewmodel.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';
import '../net_connection.dart';

class TrainerRegistration extends StatelessWidget {
  TrainerRegistration({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistrationViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              backgroundColor: whiteTextColor,
              key: key,
              resizeToAvoidBottomInset: false,
              body: ConnectionCheck(
                key: key,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      verticalSpaceLarge,
                      verticalSpaceLarge,
                      verticalSpaceLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 4.3.w,
                            height: 3.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/scalelogo.png'),
                            ),
                          ),
                          horizontalSpaceMedium,
                          Text(
                            "Scale India",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                      verticalSpaceTiny,
                      Text(
                        "Trainer Registration",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                      verticalSpaceTiny,
                      CircleAvatar(
                        radius: 40.0.sp,
                        backgroundColor: hashTextColor,
                        child: Icon(
                          Icons.person_add,
                          color: whiteTextColor,
                          size: 60.sp,
                        ),
                      ),
                      verticalSpaceTiny,
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your name',
                            labelStyle: TextStyle(
                                color: Color(0xff716363),
                                fontSize: 13.sp,
                                fontFamily: 'Ubuntu'),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: blueTextColor, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your father name',
                            labelStyle: TextStyle(
                                color: Color(0xff716363),
                                fontSize: 13.sp,
                                fontFamily: 'Ubuntu'),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: blueTextColor, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your address',
                            labelStyle: TextStyle(
                                color: Color(0xff716363),
                                fontSize: 13.sp,
                                fontFamily: 'Ubuntu'),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: blueTextColor, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your mobile number',
                            labelStyle: TextStyle(
                                color: Color(0xff716363),
                                fontSize: 13.sp,
                                fontFamily: 'Ubuntu'),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: blueTextColor, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Create a password',
                            labelStyle: TextStyle(
                                color: Color(0xff716363),
                                fontSize: 13.sp,
                                fontFamily: 'Ubuntu'),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: blueTextColor, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      verticalSpaceMedium,
                      CustomButton(6, 30, customButtonGradientColor,
                          title: 'Submit', onPressed: () {}),
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
        viewModelBuilder: () => RegistrationViewModel());
  }
}
