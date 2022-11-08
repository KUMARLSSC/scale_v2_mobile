import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class Magzine extends StatelessWidget {
  const Magzine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
      key: key,
      title: 'India Leather',
      leadingIcon: Icon(
        Icons.arrow_back_ios,
        color: blackTextColor,
        size: 24.sp,
      ),
      form: Padding(
        key: key,
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          key: key,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 70,
                right: 70,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Start to Read",
                    style: TextStyle(
                      color: Color(0xff3d3737),
                      fontSize: 10.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "50%",
                    style: TextStyle(
                      color: Color(0xff3d3737),
                      fontSize: 10.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceTiny,
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: LinearPercentIndicator(
                width: 67.0.w,
                lineHeight: 0.8.h,
                percent: 0.5,
                progressColor: Colors.orangeAccent,
                restartAnimation: false,
                animation: true,
              ),
            ),
            verticalSpaceTiny,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalSpaceLarge,
                Container(
                  width: 50.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/magzine1.png'))),
                ),
                horizontalSpaceSmall,
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Color(
                        0xff999595,
                      ),
                      size: 25.sp,
                    ),
                    verticalSpaceTiny,
                    Icon(
                      Icons.favorite,
                      color: Color(
                        0xff999595,
                      ),
                      size: 25.sp,
                    ),
                    verticalSpaceTiny,
                    Icon(
                      Icons.error,
                      color: Color(
                        0xff999595,
                      ),
                      size: 25.sp,
                    ),
                    verticalSpaceTiny,
                    Icon(
                      Icons.download_rounded,
                      color: Color(
                        0xff999595,
                      ),
                      size: 25.sp,
                    ),
                  ],
                )
              ],
            ),
            verticalSpaceTiny,
            Center(
              child: CustomButton(3.5, 40, customButtonGradientColor,
                  title: 'Read', onPressed: () {}),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "POPULAR MAGZINES",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xff0065ff),
                      fontSize: 12.sp,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TRENDING MAGZINES",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xff0065ff),
                      fontSize: 10.sp,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                  Container(
                    width: 20.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/magzine1.png'))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
