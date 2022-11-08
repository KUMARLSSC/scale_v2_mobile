import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:sizer/sizer.dart';

import 'custom_button.dart';

class CreateSOP extends StatelessWidget {
  final void Function()? onPressed;
  const CreateSOP({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
        key: key,
        title: 'Create Batch',
        leadingIcon: Icon(
          Icons.arrow_back_ios,
          color: blackTextColor,
          size: 20.sp,
        ),
        action: [
          IconButton(
            icon: Icon(
              Icons.help_outline_outlined,
              color: blackTextColor,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
        form: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text(
              "2/2",
              style: TextStyle(
                color: Color(0xff0065ff),
                fontSize: 16.sp,
              ),
            ),
          ),
          verticalSpaceTiny,
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: LinearPercentIndicator(
              width: 70.0.w,
              lineHeight: 0.8.h,
              percent: 1.0,
              progressColor: Colors.lightBlueAccent,
              restartAnimation: false,
              animation: false,
            ),
          ),
          verticalSpaceTiny,
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Batch Details",
                  style: TextStyle(
                      color: Color(0xff0065ff),
                      fontSize: 11.sp,
                      fontFamily: 'Ubuntu'),
                ),
                Text(
                  "SOP’S",
                  style: TextStyle(
                      color: Color(0xff0065ff),
                      fontSize: 11.sp,
                      fontFamily: 'Ubuntu'),
                ),
              ],
            ),
          ),
          verticalSpaceLarge,
          Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text(
                "SOP'S",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.sp,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w600,
                ),
              )),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 75.w,
                height: 6.5.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Color(0xff807a7a),
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  "Select Sop's to add",
                  style: TextStyle(
                    color: Color(0xff53575e),
                    fontSize: 10.sp,
                  ),
                ),
              ),
              Icon(Icons.done_rounded)
            ],
          ),
          verticalSpaceLarge,
          CustomButton(7, 24, customButtonGradientColor,
              title: 'Check', onPressed: onPressed),
        ]));
  }
}
