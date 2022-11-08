import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/profile.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/e-learning_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import 'candidate_viewmodel.dart';

class Candidate extends StatelessWidget {
  const Candidate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
        builder: (context, model, child) => WillPopScope(
              onWillPop: () => model.close(),
              child: Scaffold(
                body: ConnectionCheck(
                  child: ListView(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    children: <Widget>[
                      Container(
                        width: SizerUtil.width,
                        height: 34.h,
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
                                    image: AssetImage(
                                        'assets/images/scalelogo.png'),
                                  ),
                                ),
                                horizontalSpaceSmall,
                                Text(
                                  "Scale India",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontFamily: 'Ubuntu'),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CandidateProfile()),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          key: key,
                                          radius: 18.sp,
                                          backgroundColor: whiteTextColor,
                                          child: Image(
                                            width: 25.w,
                                            height: 4.h,
                                            image: AssetImage(
                                                'assets/images/profile.gif'),
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
                                  IconButton(
                                    icon: Icon(
                                      Icons.notifications,
                                      size: 29.sp,
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                            verticalSpaceSmall,
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 22, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 68.w,
                                    child: Text(
                                      "What would you like to learn today ?",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Ubuntu'),
                                    ),
                                  ),
                                  Icon(
                                    Icons.calendar_today,
                                    size: 29.sp,
                                  ),
                                ],
                              ),
                            ),
                            verticalSpaceSmall,
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25),
                              child: Container(
                                width: double.infinity,
                                height: 7.5.h,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    color: whiteTextColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: TextField(
                                  cursorColor: Color(0xFF000000),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color:
                                            Color(0xFF000000).withOpacity(0.5),
                                      ),
                                      hintText: "Search",
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceTiny,
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 80.w,
                          height: 12.2.h,
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
                                        "The Public Assessment will start on 05-05-2020 at 10:00 AM",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.sp,
                                            fontFamily: 'Ubuntu'),
                                      ),
                                    ),
                                    CustomButton(
                                        3.8, 30, customButtonGradientColor,
                                        title: 'Assessment',
                                        onPressed: model
                                            .navigateToPublicAssessmentWelcome),
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
                              left: 17,
                              right: 17,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Job portal",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.sp,
                                      fontFamily: 'Ubuntu'),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13, top: 8),
                            child: Row(
                              children: [
                                //job portal
                                Container(
                                  width: 60.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                    color: Color.fromRGBO(232, 232, 232, 100),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Footwear",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Ubuntu'),
                                      ),
                                      Text(
                                        "Operator Moulding",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xff0a0707),
                                            fontSize: 11.sp,
                                            fontFamily: 'Ubuntu'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.home,
                                            color: Color(0xff6c6363),
                                            size: 15.sp,
                                          ),
                                          Text(
                                            "Leathers ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xff6c6363),
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          horizontalSpaceLarge,
                                          Icon(Icons.location_on,
                                              size: 15.sp,
                                              color: Color(0xff6c6363)),
                                          Text(
                                            "Chennai ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xff6c6363),
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomButton(
                                          3.5, 15.3, customButtonGradientColor,
                                          title: 'View', onPressed: () {}),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffffce31),
                                            size: 20.sp,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffffce31),
                                            size: 20.sp,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffffce31),
                                            size: 20.sp,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffffce31),
                                            size: 20.sp,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffffce31),
                                            size: 20.sp,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          verticalSpaceTiny,
                          //assessment
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Assessments",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.sp,
                                    fontFamily: 'Ubuntu'),
                              ),
                            ),
                          ),
                          verticalSpaceTiny,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(4.1, 20, customButtonGradientColor,
                                  title: 'Self', onPressed: () {}),
                              CustomButton(4.1, 20, customButtonGradientColor,
                                  title: 'Public',
                                  onPressed:
                                      model.navigateToPublicAssessmentWelcome),
                              CustomButton(4.1, 20, customButtonGradientColor,
                                  title: 'Practice', onPressed: () {})
                            ],
                          ),
                          //e-learning
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 17, right: 17, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "E-Learning",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Ubuntu'),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          verticalSpaceTiny,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(
                                4.1,
                                23,
                                customButtonGradientColor,
                                title: 'Unit 1',
                                onPressed: model.navigateToScorm,
                              ),
                              CustomButton(4.1, 23, lightestBlueGradientColor,
                                  title: 'FootWear', onPressed: () {}),
                              CustomButton(4.1, 23, lightestBlueGradientColor,
                                  title: 'FootWear', onPressed: () {}),
                            ],
                          ),
                          verticalSpaceTiny,
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ELearningWidget(
                                  onPressed: model.navigateToScorm,
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceLarge,
                        ],
                      ),
                    ],
                  ),
                  //Assessment Indicator
                ),
              ),
            ),
        viewModelBuilder: () => CandidateViewModel());
  }
}
