import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class TOT extends StatelessWidget {
  const TOT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 362.w,
        height: 64.4.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color(0xffddd1d1),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 250.w,
                height: 13.1.h,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/pmkvy.png'),
                ),
              ),
              verticalSpaceTiny,
              SizedBox(
                width: 85.w,
                child: Text(
                  "Pradhan Mantri Kaushal Vikas Yojana (PMKVY) under Ministry of Skill Development and Entrepreneurship (MSDE)\nThe objective of PMKVY Scheme is to encourage skill development for youth by providing monetary rewards for successful completion of approved training programs. Specifically, the Scheme aims to:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 80.w,
                child: Text(
                  "Encourage standardization in the certification process and initiate a process of creating a registry of skills\nEnable and mobilize a large number of Indian youth to take up skill training and become employable and earn their livelihood.\nIncrease productivity of the existing workforce and align the training and certification to the needs of the country.\nProvide Monetary Awards for Skill Certification to boost employability and productivity of youth by incentivizing them for skill trainings\nReward candidates undergoing skill training by authorized institutions at an average monetary reward of Rs. 8,000 (Rupees Eight Thousand) per candidate. Benefit 24 lakh youth at an approximate total cost of Rs. 1,500 Crores.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                  ),
                ),
              ),
              verticalSpaceSmall,
              Text(
                "Download the details about TOT scheme.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xff0038ff),
                  fontSize: 9.sp,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalSpaceTiny,
              CustomButton(4.6, 30, customButtonGradientColor,
                  title: 'Download', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
