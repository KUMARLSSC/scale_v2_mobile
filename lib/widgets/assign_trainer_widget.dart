import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import 'custom_text.dart';

class AssignTrainerWidget extends StatefulWidget {
  const AssignTrainerWidget({Key? key}) : super(key: key);

  @override
  _AssignTrainerWidgetState createState() => _AssignTrainerWidgetState();
}

class _AssignTrainerWidgetState extends State<AssignTrainerWidget> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return _hasBeenPressed
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: hashTextColor,
                      size: 23.sp,
                    ),
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                      })
                    },
                  ),
                  Icon(
                    Icons.person_outline,
                    size: 40.sp,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffffce31),
                        size: 15.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffffce31),
                        size: 15.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffffce31),
                        size: 15.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffffce31),
                        size: 15.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffffce31),
                        size: 15.sp,
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "Trainer Name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff0065ff),
                      fontSize: 20.sp,
                      fontFamily: 'Ubuntu'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "ID -1234567890",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff746868),
                    fontSize: 16.sp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Icon(Icons.phone_android),
                    Text(
                      "8825885478",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Languages know",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              verticalSpaceTiny,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 25.w,
                    height: 3.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff5d5fef),
                    ),
                    child: Text(
                      "English",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          letterSpacing: 0.65,
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                  Container(
                    width: 25.w,
                    height: 3.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff5def85),
                    ),
                    child: Text(
                      "Tamil",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          letterSpacing: 0.65,
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                  Container(
                    width: 25.w,
                    height: 3.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xfff178b6),
                    ),
                    child: Text(
                      "Hindi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          letterSpacing: 0.65,
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "20",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.sp,
                              fontFamily: "Ubuntu"),
                        ),
                        Text(
                          "Candidates",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 9.sp,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "05",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.sp,
                              fontFamily: "Ubuntu"),
                        ),
                        Text(
                          "Training Completed",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 9.sp,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "02",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.sp,
                              fontFamily: "Ubuntu"),
                        ),
                        Text(
                          "SOP'S",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 9.sp,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              CustomButton(4.4, 30.1, greenButtonGradientColor,
                  title: 'Assign', onPressed: () {})
            ],
          )
        : Column(
            children: [
              GestureDetector(
                onTap: () => {
                  setState(() {
                    _hasBeenPressed = !_hasBeenPressed;
                  })
                },
                child: Container(
                  width: 343.w,
                  height: 13.h,
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
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
                      CircleAvatar(
                        key: this.widget.key,
                        child: Image(
                          image: AssetImage('assets/images/profile.gif'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Column(
                          children: [
                            CustomText.candidateName('Candidate Name'),
                            CustomText.candidateIDText('ID - 123456789'),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffffce31),
                            size: 15.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffce31),
                            size: 15.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffce31),
                            size: 15.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffce31),
                            size: 15.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffce31),
                            size: 15.sp,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
  }
}
