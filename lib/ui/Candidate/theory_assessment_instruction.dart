import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/candidate_viewmodel.dart';
import 'package:scaleindia/widgets/bullet_list_text.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../net_connection.dart';

class TheoryAssessmentInstruction extends StatelessWidget {
  const TheoryAssessmentInstruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: ConnectionCheck(
                child: ListView(
                  children: <Widget>[
                    Container(
                      width: SizerUtil.width,
                      height: 24.h,
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
                                const EdgeInsets.only(left: 20, right: 120),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: blackTextColor,
                                  size: 18.sp,
                                ),
                                Text(
                                  "Theory Assessment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontFamily: 'Ubuntu'),
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceTiny,
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  key: key,
                                  radius: 25.sp,
                                  backgroundColor: whiteTextColor,
                                  child: Image(
                                    width: 10.w,
                                    height: 8.h,
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
                                          fontSize: 17.sp,
                                          fontFamily: 'Ubuntu'),
                                    ),
                                    Text(
                                      "ID - 1234567890",
                                      style: TextStyle(
                                          color: Color(0xff686060),
                                          fontSize: 14.sp,
                                          fontFamily: 'Ubuntu'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceTiny,
                          Center(
                            child: Text(
                              "Theory Assessment",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Ubuntu',
                                letterSpacing: 1.40,
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
                          height: 34.2.h,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromRGBO(196, 196, 196, 100),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Instruction",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff3c3939),
                                    fontSize: 22.sp,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Ubuntu'),
                              ),
                              BulletListText([
                                "The theory assessment is of 60 mintues.",
                                "It is multiple choice question with no negative marks.",
                                "For any issue contact the assessor.",
                                "If you get more than three warnings you will automatically disqulified.",
                                "Press to start button to start your theory assessment",
                                "After pressed start button the timer will starts."
                              ]),
                            ],
                          )),
                    ),
                    verticalSpaceTiny,
                    Column(
                      children: [
                        Text(
                          "All the best",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.sp,
                              fontFamily: 'Ubuntu'),
                        ),
                        verticalSpaceTiny,
                        Image(
                            width: 18.w,
                            height: 8.h,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/allthebest.gif')),
                        verticalSpaceSmall,
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
                                "Accept",
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
                            title: 'Start',
                            onPressed: model.navigateToTheoryAssessment),
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
