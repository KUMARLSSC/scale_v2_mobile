import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/candidate_viewmodel.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';

import '../net_connection.dart';
import 'package:sizer/sizer.dart';

class PublicAssessmentWelcome extends StatelessWidget {
  const PublicAssessmentWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: ConnectionCheck(
                child: ListView(
                  children: <Widget>[
                    Container(
                      width: SizerUtil.width,
                      height: 31.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              whiteTextColor,
                              Color.fromRGBO(232, 232, 232, 100)
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      child: Column(
                        children: <Widget>[
                          verticalSpaceLarge,
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 90),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: blackTextColor,
                                  size: 18.sp,
                                ),
                                horizontalSpaceSmall,
                                Text(
                                  "Public Assessment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontFamily: 'Ubuntu'),
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceMedium,
                          Text(
                            "Welcome to Assessment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Ubuntu',
                              letterSpacing: 1.40,
                            ),
                          ),
                          verticalSpaceSmall,
                          verticalSpaceTiny,
                          SizedBox(
                            width: 85.w,
                            child: Text(
                              "In very simple terms, an online assessment may be defined as an evaluation of a person's abilities, behaviours and/or characteristics. This test is conducted over the Internet by using available web technologies.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.sp,
                                letterSpacing: 1.10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    Align(
                      child: Container(
                        width: 80.w,
                        height: 15.2.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(196, 196, 196, 100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width: 50.w,
                                      child: Text(
                                        "*IMPORTANT*",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          decoration: TextDecoration.underline,
                                          fontSize: 14.sp,
                                          fontFamily: 'Ubuntu',
                                          letterSpacing: 1.40,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 50.w,
                                    child: Text(
                                      "Don't do any irregular activities  while on assessment.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff363131),
                                        fontSize: 10.6.sp,
                                        letterSpacing: 1.20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SvgPicture.asset(
                                'assets/images/exam.svg',
                                width: 20.w,
                                height: 10.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 17, right: 17, top: 8),
                            child: Text(
                              "Select an Language",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Ubuntu',
                                letterSpacing: 1.80,
                              ),
                            )),
                        verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //Language Box
                            Container(
                              width: 25.w,
                              height: 13.6.h,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: blackTextColor,
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: whiteTextColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.check_circle,
                                      color: blackTextColor,
                                      size: 15.sp,
                                    ),
                                  ),
                                  Text(
                                    'En',
                                    style: TextStyle(
                                        color: blackTextColor, fontSize: 21.sp),
                                  ),
                                  Text(
                                    "English",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: blackTextColor,
                                        fontSize: 12.sp,
                                        fontFamily: 'Ubuntu'),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 25.w,
                              height: 13.6.h,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(196, 196, 196, 100),
                              ),
                              child: Column(
                                children: [
                                  verticalSpaceMedium,
                                  Text(
                                    'Ta',
                                    style: TextStyle(
                                        color: whiteTextColor, fontSize: 21.sp),
                                  ),
                                  Text(
                                    "Tamil",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontFamily: 'Ubuntu'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceTiny,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //Language Box
                            Container(
                              width: 25.w,
                              height: 13.6.h,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(196, 196, 196, 100),
                              ),
                              child: Column(
                                children: [
                                  verticalSpaceMedium,
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Hi',
                                        style: TextStyle(
                                            color: whiteTextColor,
                                            fontSize: 21.sp),
                                      )),
                                  Text(
                                    "Hindi",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontFamily: 'Ubuntu'),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 25.w,
                              height: 13.6.h,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(196, 196, 196, 100),
                              ),
                              child: Column(
                                children: [
                                  verticalSpaceMedium,
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Be',
                                        style: TextStyle(
                                            color: whiteTextColor,
                                            fontSize: 21.sp),
                                      )),
                                  Text(
                                    "Bengali",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontFamily: 'Ubuntu'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceSmall,
                        SizedBox(
                          width: 50.w,
                          child: Text(
                            "Press next button to continue",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff928d8d),
                                fontSize: 10.sp,
                                fontFamily: 'Ubuntu'),
                          ),
                        ),
                        verticalSpaceTiny,
                        CustomButton(5.9, 27, customButtonGradientColor,
                            title: 'Next',
                            onPressed:
                                model.navigateToAssessmentRulesCondition),
                        verticalSpaceSmall,
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
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => CandidateViewModel());
  }
}
