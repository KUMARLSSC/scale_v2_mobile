import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/candidate_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class TheoryAssessment extends StatelessWidget {
  const TheoryAssessment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
              title: 'Theory Assessment',
              leadingIcon: Icon(
                Icons.arrow_back_ios,
                color: blackTextColor,
                size: 18.sp,
              ),
              form: ListView(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          width: 20.w,
                          height: 10.h,
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/robot.gif'),
                        ),
                        Column(
                          children: [
                            Text(
                              "Hi Kumaresan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Text(
                              "ID - 1234567890",
                              style: TextStyle(
                                  color: Color(0xff686060),
                                  fontSize: 10.sp,
                                  fontFamily: 'Ubuntu'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: Text(
                    "Now the AI was monitoring you",
                    style: TextStyle(
                        color: Color(0xff848080),
                        fontSize: 10.sp,
                        fontFamily: 'Ubuntu'),
                  )),
                  verticalSpaceTiny,
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: LinearPercentIndicator(
                      lineHeight: 3.h,
                      percent: 0.5,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      center: Text(
                        "60:00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                      backgroundColor: whiteTextColor,
                      linearGradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(232, 232, 232, 100),
                          Color.fromRGBO(232, 232, 232, 100)
                        ],
                      ),
                      restartAnimation: false,
                      animation: true,
                    ),
                  ),
                  verticalSpaceRegular,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Questions - 1/20",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                      horizontalSpaceLarge,
                      CustomButton(3.7, 27, customButtonGradientColor,
                          title: 'Summary', onPressed: model.navigateToSummary)
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 85.w,
                      height: 45.h,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(232, 232, 232, 100),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Question number
                          Container(
                            width: 17.w,
                            height: 3.4.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff21bd07),
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: whiteTextColor,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 15.sp),
                            ),
                          ),
                          verticalSpaceTiny,
                          //Question
                          Text(
                            "____________ consists of instructions of the work to be carried out by basic closing operator.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontFamily: 'Ubuntu'),
                          ),
                          Container(
                            width: 85.w,
                            height: 6.h,
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromRGBO(196, 196, 196, 100),
                                width: 1,
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "1)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18.sp,
                                  ),
                                ),
                                horizontalSpaceLarge,
                                horizontalSpaceLarge,
                                Text(
                                  "Job card",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontFamily: 'Ubuntu',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 85.w,
                            height: 6.h,
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(196, 196, 196, 100),
                              border: Border.all(
                                color: blackTextColor,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "2)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18.sp,
                                  ),
                                ),
                                horizontalSpaceLarge,
                                horizontalSpaceLarge,
                                Text(
                                  "Identity card",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontFamily: 'Ubuntu',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 85.w,
                            height: 6.h,
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromRGBO(196, 196, 196, 100),
                                width: 1,
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "3)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18.sp,
                                  ),
                                ),
                                horizontalSpaceLarge,
                                horizontalSpaceLarge,
                                Text(
                                  "Log book",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontFamily: 'Ubuntu',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 85.w,
                            height: 6.h,
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromRGBO(196, 196, 196, 100),
                                width: 1,
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "4)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 18.sp,
                                  ),
                                ),
                                horizontalSpaceLarge,
                                horizontalSpaceLarge,
                                Text(
                                  "Accident",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontFamily: 'Ubuntu',
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        5.2,
                        30,
                        hashGradientColor,
                        title: 'Previous',
                        onPressed: () {},
                      ),
                      CustomButton(5.2, 30, customButtonGradientColor,
                          title: 'Next', onPressed: model.navigateToSummary)
                    ],
                  ),
                  verticalSpaceMedium,
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
        viewModelBuilder: () => CandidateViewModel());
  }
}
