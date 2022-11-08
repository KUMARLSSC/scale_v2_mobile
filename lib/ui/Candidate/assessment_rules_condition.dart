import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/candidate_viewmodel.dart';
import 'package:scaleindia/widgets/bullet_list_text.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../net_connection.dart';

class AssessmentRulesCondition extends StatelessWidget {
  const AssessmentRulesCondition({Key? key}) : super(key: key);

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
                            padding:
                                const EdgeInsets.only(left: 20, right: 130),
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
                                  "Rules & Condition",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontFamily: 'Umbutu'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: SvgPicture.asset(
                              'assets/images/exam.svg',
                              width: 25.w,
                              height: 15.h,
                            ),
                          ),
                          verticalSpaceTiny,
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Rules & Condition",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ubuntu',
                                letterSpacing: 1.40,
                              ),
                            ),
                          ),
                          verticalSpaceSmall,
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
                            padding: const EdgeInsets.all(10.0),
                            child: BulletListText([
                              "Don’t atten any calls during assessment.",
                              "Don’t access any apps during assessment.",
                              "Don’t do any irregular activities while on assessment."
                            ])),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 17, right: 17, top: 8),
                            child: Text(
                              "*Important*",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp,
                                fontFamily: 'Umbutu',
                                letterSpacing: 1.80,
                              ),
                            )),
                        verticalSpaceSmall,
                        Container(
                            width: 90.w,
                            height: 11.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromRGBO(196, 196, 196, 100),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SizedBox(
                                      width: 305,
                                      child: Text(
                                        "Our AI is monitor your mobile while assessment starts . If you did any irregular activities you will be automatically disqulified from the assessment.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xff191818),
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                    )),
                              ],
                            )),
                        verticalSpaceSmall,
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                key: key,
                                radius: 18.sp,
                                backgroundColor: whiteTextColor,
                                child: Image(
                                  width: 25.w,
                                  height: 4.h,
                                  image:
                                      AssetImage('assets/images/profile.gif'),
                                ),
                              ),
                              horizontalSpaceRegular,
                              Column(
                                children: [
                                  Text(
                                    "Hi Kumaresan",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontFamily: 'Umbutu'),
                                  ),
                                  Text(
                                    "ID - 1234567890",
                                    style: TextStyle(
                                        color: Color(0xff686060),
                                        fontSize: 10.sp,
                                        fontFamily: 'Umbutu'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        verticalSpaceTiny,
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: greenColor,
                              ),
                              horizontalSpaceRegular,
                              Text(
                                "accept the rules and condition",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff302d2d),
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        verticalSpaceTiny,
                        CustomButton(5.9, 27, customButtonGradientColor,
                            title: 'Next',
                            onPressed: model.navigateToUploadImageAadhar),
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
                                  fontFamily: 'Umbutu'),
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
                              fontFamily: 'Umbutu'),
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
