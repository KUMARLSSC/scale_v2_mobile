import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:sizer/sizer.dart';

class TimeTableWidget extends StatelessWidget {
  final Gradient gradient;
  final Color color;
  final Color text3color;
  final Color color3;
  final String text2;
  final Color indicatecolor;
  final String text1;
  final String text3;
  final void Function()? onPressed;
  final Color outLineColor;
  final bool busy;
  TimeTableWidget(
    this.gradient,
    this.text1,
    this.color,
    this.text3color,
    this.color3,
    this.text2,
    this.text3,
    this.indicatecolor,
    this.outLineColor, {
    Key? key,
    this.busy = false,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 349.w,
        height: 15.5.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteTextColor,
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset.zero,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 16.w,
              height: 15.4.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: gradient,
                //lightblueGradientColor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Batch",
                    style: TextStyle(
                        color: color,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '$text1',
                    style: TextStyle(
                        color: color,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "10:00 am",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                    ),
                  ),
                  Text(
                    "to ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                    ),
                  ),
                  Text(
                    "11:00 am",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "$text2",
                        style: TextStyle(
                          color: Color(0xff6d5b5b),
                          fontSize: 11.sp,
                        ),
                      ),
                      horizontalSpaceSmall,
                      CircleAvatar(
                        radius: 5.5,
                        backgroundColor: indicatecolor,
                      )
                    ],
                  ),
                  Text(
                    "FootWear Operator Moulding",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Ubuntu'),
                  ),
                  Container(
                    width: 17.9.w,
                    height: 2.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: color3,
                    ),
                    child: Text(
                      "$text3",
                      style: TextStyle(
                        color: text3color,
                        fontSize: 8.sp,
                      ),
                    ),
                  ),
                  Text(
                    "No.Of.Students :  20",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff3f3a3a),
                      fontSize: 10.sp,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
