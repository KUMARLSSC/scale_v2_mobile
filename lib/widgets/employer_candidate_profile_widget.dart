import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class EmployerCandidateProfileWidget extends StatelessWidget {
  const EmployerCandidateProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: 28.w,
      height: 23.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color(0xffccbfbf),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        key: key,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          key: key,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.account_box_outlined,
              size: 30.sp,
            ),
            Text(
              "Sanni",
              style: TextStyle(
                  color: Color(0xff0065ff),
                  fontSize: 11.sp,
                  fontFamily: 'Ubuntu'),
            ),
            Text(
              "ID - 1234567890",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Ubuntu',
                fontSize: 7.sp,
              ),
            ),
            Text(
              "Looking for",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff928585),
                fontSize: 7.sp,
              ),
            ),
            Text(
              "FootWear Operator Moulding",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 7.sp,
              ),
            ),
            CustomButton(3, 14, blueButtonGradientColor,
                title: 'VIEW', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
