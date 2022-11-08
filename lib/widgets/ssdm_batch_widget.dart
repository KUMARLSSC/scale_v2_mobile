import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SSDMBatchWidget extends StatelessWidget {
  final bool busy;
  final String? text1;
  final bool tp;
  final String? tpText;
  final Color? color1;
  final String? text2;
  final Color? color2;
  const SSDMBatchWidget(
      {Key? key,
      this.busy = false,
      this.text1,
      this.color1,
      this.color2,
      this.tpText,
      this.tp = false,
      this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 28.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffcec3c3),
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  busy ? "Batch Not Assigned" : "Batch 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontFamily: "Work Sans",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Created on - 24/05/2021",
                      style: TextStyle(
                        color: Color(0xff6e828e),
                        fontSize: 7.sp,
                      ),
                    ),
                    tp
                        ? Text(
                            "$tpText",
                            style: TextStyle(
                              color: Color(0xff134f70),
                              fontSize: 7.sp,
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        : Container()
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xff695757),
              ),
              Text(
                "Mugappair West,Chennai - 600095",
                style: TextStyle(
                  color: Color(0xff695656),
                  fontSize: 8.sp,
                ),
              )
            ],
          ),
          Center(
            child: Text(
              '$text1',
              style: TextStyle(
                  color: color1, fontSize: 20.sp, fontFamily: 'Ubuntu'),
            ),
          ),
          busy
              ? Container()
              : Container(
                  alignment: Alignment.center,
                  width: 18.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: color2,
                  ),
                  child: Text(
                    '$text2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  )),
          busy
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 140,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 11.w,
                        height: 5.h,
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/red_new.gif',
                          ),
                        ),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "20",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
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
                                fontSize: 18.sp,
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
                                fontSize: 18.sp,
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
                      Icon(Icons.more_vert)
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
