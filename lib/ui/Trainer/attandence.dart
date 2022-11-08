import 'package:flutter/material.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/common_candidate.dart';
import 'package:sizer/sizer.dart';

class CandidateAttandence extends StatelessWidget {
  const CandidateAttandence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CommonCandidate(
            busy: true,
            common: Row(
              children: [
                Text(
                  "Online",
                  style: TextStyle(
                      color: Color(0xff31b62f),
                      fontSize: 11.sp,
                      fontFamily: 'Ubuntu'),
                ),
                horizontalSpaceMedium,
                Container(
                  width: 15.9.w,
                  height: 4.3.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff24dd37),
                  ),
                  child: Text(
                    "Present",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontFamily: 'Ubuntu'),
                  ),
                )
              ],
            ),
          ),
          verticalSpaceSmall,
          CommonCandidate(
            busy: true,
            common: Row(
              children: [
                Text(
                  "Not Online",
                  style: TextStyle(
                      color: Color(0xffff0000),
                      fontSize: 10.sp,
                      fontFamily: 'Ubuntu'),
                ),
                horizontalSpaceMedium,
                Container(
                  width: 15.9.w,
                  height: 4.3.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffff0000),
                  ),
                  child: Text(
                    "Absent",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontFamily: 'Ubuntu'),
                  ),
                )
              ],
            ),
          ),
          verticalSpaceSmall,
          CommonCandidate(
            busy: true,
            common: Row(
              children: [
                Text(
                  "Online",
                  style: TextStyle(
                      color: Color(0xff31b62f),
                      fontSize: 11.sp,
                      fontFamily: 'Ubuntu'),
                ),
                horizontalSpaceMedium,
                Container(
                  width: 15.9.w,
                  height: 4.3.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff24dd37),
                  ),
                  child: Text(
                    "Present",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontFamily: 'Ubuntu'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
