import 'package:flutter/material.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:sizer/sizer.dart';

class QPs extends StatelessWidget {
  const QPs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xFFe9eaec),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              cursorColor: Color(0xFF000000),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF000000).withOpacity(0.5),
                  ),
                  hintText: "Search",
                  border: InputBorder.none),
            ),
          ),
        ),
        verticalSpaceSmall,
        SizedBox(
          width: 80.w,
          child: Text(
            "As part of its activities, the Leather Sector Skill Council (LSSC) has developed National Occupational Standards (NOS) for the following job roles concerning Finished Leather, Footwear and Leather Goods & Leather Garments segments.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff6a6161),
              fontSize: 11,
              fontFamily: "Work Sans",
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        verticalSpaceSmall,
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "S.No",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              Text(
                "Job Roles Identified",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              Text(
                "NSQF Level",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        verticalSpaceTiny,
        Container(
          width: SizerUtil.width,
          height: 3.8.h,
          color: Color(0xffe9e4e4),
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            "Finished Leather",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: "Work Sans",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        verticalSpaceTiny,
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Drum Operator",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff249add),
                  fontSize: 14,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "2",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        verticalSpaceTiny,
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Drum Operator",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff249add),
                  fontSize: 14,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
