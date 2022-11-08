import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class AssessmentSOPWidget extends StatelessWidget {
  final bool busy;
  AssessmentSOPWidget({Key? key, this.busy = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      height: 17.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: candidateColor1),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 6,
            offset: Offset.zero,
          ),
        ],
        color: whiteTextColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CustomText.topTabText('1.'),
            ),
          ),
          Container(
            width: 52.w,
            height: 17.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText.textStyle30('Center'),
                CustomText.trainerCandidateText(
                    'Take the Photo of Assessment Center and upload it')
              ],
            ),
          ),
          Container(
              width: 30.w,
              height: 17.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: candidateColor1),
              child: Center(
                child: Image(
                  image: AssetImage(
                    'assets/images/upload.gif',
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
