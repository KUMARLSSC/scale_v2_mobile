import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class ELearningWidget extends StatelessWidget {
  final void Function()? onPressed;
  const ELearningWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55.1.w,
        height: 15.5.h,
        padding: const EdgeInsets.all(8),
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
        child: Row(
          children: [
            Container(
              width: 18.w,
              height: 13.2.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(128, 120, 120, 100),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/footwear.png'))),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 26.w,
                    height: 5.8.h,
                    child: Text(
                      "Unit 1 Overview LSS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "04 lesson",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff817070),
                          fontSize: 10.sp,
                        ),
                      ),
                      horizontalSpaceRegular,
                      Row(
                        children: [
                          Text(
                            "4.3",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff3d3939),
                              fontSize: 10.sp,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffce31),
                            size: 17.sp,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                verticalSpaceTiny,
                CustomButton(3, 17.1, customButtonGradientColor,
                    title: 'Start', onPressed: onPressed)
              ],
            ),
          ],
        ));
    //Assessment Indicator
  }
}
