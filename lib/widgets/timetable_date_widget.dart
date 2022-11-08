import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

import 'custom_text.dart';

class TimeTableDateWidget extends StatelessWidget {
  final String text;
  const TimeTableDateWidget({
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 77.w,
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: commonButtonColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText.candidateIDText(text),
          CustomText.scoreText(text),
        ],
      ),
    );
  }
}
