import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/assign_trainer_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class AssignTrainer extends StatelessWidget {
  const AssignTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
      title: 'Created By You',
      leadingIcon: Icon(
        Icons.arrow_back_ios,
        color: blackTextColor,
        size: 20.sp,
      ),
      form: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 85),
                child: Row(
                  children: [
                    Text(
                      "Batch ID",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.sp,
                      ),
                    ),
                    horizontalSpaceRegular,
                    Text(
                      "12345678",
                      style: TextStyle(
                          color: Color(0xff000aff),
                          fontSize: 26.sp,
                          fontFamily: 'Ubuntu'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    horizontalSpaceRegular,
                    Text(
                      "Mugappair West,Chennai - 600095",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  children: [
                    Text(
                      "No.Of.Candidate : ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                    horizontalSpaceRegular,
                    Text(
                      "20",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.sp,
                          fontFamily: 'Ubuntu'),
                    ),
                    horizontalSpaceRegular,
                    CustomButton(5, 15, customButtonGradientColor,
                        title: 'View', onPressed: () {})
                  ],
                ),
              ),
              Text(
                "SOP’S",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Ubuntu',
                    decoration: TextDecoration.underline),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "SOP 1",
                    style: TextStyle(
                      color: Color(0xff0093ff),
                      fontSize: 16.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  verticalSpaceSmall,
                  Text(
                    "SOP 2",
                    style: TextStyle(
                      color: Color(0xff0093ff),
                      fontSize: 16.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  verticalSpaceSmall,
                  Text(
                    "SOP 3",
                    style: TextStyle(
                      color: Color(0xff0093ff),
                      fontSize: 16.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              verticalSpaceSmall,
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Text(
                  "Assign a Trainer for this Batch",
                  style: TextStyle(
                    color: Color(0xff000aff),
                    fontSize: 12.sp,
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              verticalSpaceTiny,
              Container(
                width: 362.w,
                height: 51.h,
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xffc1b6b6),
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: AssignTrainerWidget(
                  key: key,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
