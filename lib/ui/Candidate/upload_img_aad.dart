import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/candidate_viewmodel.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../net_connection.dart';

class UploadImageAadhar extends StatelessWidget {
  const UploadImageAadhar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: ConnectionCheck(
                child: ListView(
                  children: <Widget>[
                    Container(
                      width: SizerUtil.width,
                      height: 33.h,
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
                                  "Activate Assessment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontFamily: 'Ubuntu'),
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
                          Center(
                            child: Text(
                              "Upload",
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
                          Text(
                            "For activate assessment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff716464),
                              fontSize: 10.sp,
                            ),
                          ),
                          verticalSpaceSmall,
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    Align(
                      child: Container(
                          width: 50.w,
                          height: 17.2.h,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromRGBO(196, 196, 196, 100),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Your photo",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff3c3939),
                                    fontSize: 18.sp,
                                    fontFamily: 'Ubuntu'),
                              ),
                              Icon(
                                Icons.upload,
                                size: 20.sp,
                              ),
                            ],
                          )),
                    ),
                    verticalSpaceTiny,
                    Column(
                      children: [
                        Container(
                            width: 50.w,
                            height: 17.2.h,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromRGBO(196, 196, 196, 100),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Your Aadhar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff3c3939),
                                      fontSize: 18.sp,
                                      fontFamily: 'Ubuntu'),
                                ),
                                Icon(
                                  Icons.upload,
                                  size: 20.sp,
                                ),
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
                        verticalSpaceTiny,
                        CustomButton(5.9, 27, customButtonGradientColor,
                            title: 'Next',
                            onPressed:
                                model.navigateToTheoryAssessmentInstruction),
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
