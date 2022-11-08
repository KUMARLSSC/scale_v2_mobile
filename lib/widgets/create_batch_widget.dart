import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class CreateBatchWidget extends StatefulWidget {
  final void Function()? nextButton;
  final void Function()? addCandidateButton;
  const CreateBatchWidget({Key? key, this.nextButton, this.addCandidateButton})
      : super(key: key);

  @override
  _CreateBatchWidgetState createState() => _CreateBatchWidgetState();
}

class _CreateBatchWidgetState extends State<CreateBatchWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      key: this.widget.key,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 210),
          child: Text(
            "1/2",
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
            percent: 0.5,
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
                    color: Color(0xff52565d),
                    fontSize: 11.sp,
                    fontFamily: 'Ubuntu'),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              "Bactch ID",
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
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Color(0xff807a7a),
                  width: 1,
                ),
                color: Colors.white,
              ),
              child: Text(
                "Generate Batch ID",
                style: TextStyle(
                  color: Color(0xff249add),
                  fontSize: 10.sp,
                ),
              ),
            ),
            Icon(Icons.done_rounded)
          ],
        ),
        verticalSpaceRegular,
        Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              "In The City",
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
                  "Select your City",
                  style: TextStyle(
                    color: Color(0xff53575e),
                    fontSize: 12.sp,
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                  ),
                )),
            Icon(Icons.done_rounded)
          ],
        ),
        verticalSpaceRegular,
        Padding(
            padding: const EdgeInsets.only(right: 213),
            child: Text(
              "For The Locality",
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
                  "Select your Locality",
                  style: TextStyle(
                    color: Color(0xff53575e),
                    fontSize: 12.sp,
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                  ),
                )),
            Icon(Icons.done_rounded)
          ],
        ),
        verticalSpaceRegular,
        Padding(
            padding: const EdgeInsets.only(right: 213),
            child: Text(
              "Add Candidates",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: "Work Sans",
                fontWeight: FontWeight.w600,
              ),
            )),
        verticalSpaceTiny,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 72),
              child: Container(
                  width: 20.w,
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
                    "0",
                    style: TextStyle(
                      color: Color(0xff53575e),
                      fontSize: 12.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            CustomButton(0.7.h, 7.w, blueButtonGradientColor,
                title: 'Add', onPressed: this.widget.addCandidateButton),
            Icon(Icons.done_rounded)
          ],
        ),
        verticalSpaceRegular,
        Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              "Select a Training Partner",
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
                  "Training Partner",
                  style: TextStyle(
                    color: Color(0xff53575e),
                    fontSize: 12.sp,
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                  ),
                )),
            Icon(Icons.done_rounded)
          ],
        ),
        verticalSpaceLarge,
        CustomButton(7, 20, customButtonGradientColor,
            title: 'Next', onPressed: this.widget.nextButton),
      ],
    );
  }
}
