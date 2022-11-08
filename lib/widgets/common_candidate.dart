import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import 'custom_text.dart';

class CommonCandidate extends StatelessWidget {
  final void Function()? onPressed;
  final bool busy;
  final Widget? common;
  const CommonCandidate(
      {Key? key, this.onPressed, this.busy = false, this.common})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 7.6.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xffdac4c4),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              key: key,
              child: Image(
                image: AssetImage('assets/images/profile.gif'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText.candidateName('Candidate Name'),
              CustomText.candidateIDText('ID - 123456789'),
            ],
          ),
          busy
              ? Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: common,
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(3.h, 10.w, blueButtonGradientColor,
                      title: "View", onPressed: onPressed),
                )
        ],
      ),
    );
  }
}
