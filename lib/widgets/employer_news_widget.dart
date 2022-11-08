import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EmployerNewsWidget extends StatelessWidget {
  const EmployerNewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: 55.w,
      height: 23.4.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color(0xffe5d4d4),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        key: key,
        children: [
          Container(
            width: 54.w,
            height: 10.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/news1.png'))),
          ),
          Padding(
            key: key,
            padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
            child: Row(
              key: key,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1 mintue ago",
                  style: TextStyle(
                    color: Color(0xff4a4343),
                    fontSize: 7.sp,
                  ),
                ),
                Text(
                  "Views : 100",
                  style: TextStyle(
                    color: Color(0xff4a4343),
                    fontSize: 7.sp,
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Text(
            "LSSC LAUNCHED A SCALE INDIA APP",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontFamily: "Work Sans",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
