import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class AssessorBatchWidget extends StatelessWidget {
  final Gradient gradient;
  final Color color;
  final String assetImage;
  final String bottomText;
  final Widget customButton;
  final Color outLineColor;
  final bool busy;
  AssessorBatchWidget(this.gradient, this.bottomText, this.color,
      this.assetImage, this.customButton, this.outLineColor,
      {Key? key, this.busy = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      height: busy ? 10.h : 17.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: this.outLineColor),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 6,
            offset: Offset.zero,
          ),
        ],
        color: whiteTextColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 16.w,
            height: busy ? 10.h : 17.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: gradient,
              //lightblueGradientColor
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Batch",
                  style: TextStyle(
                      color: color, fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "1",
                  style: TextStyle(
                      color: color, fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Container(
            width: 20.h,
            height: busy ? 10.h : 17.h,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText.trainerCandidateText(
                  "Number of Students : 20",
                ),
                busy
                    ? Container()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: hashTextColor,
                          ),
                          CustomText.materialSerialNoText('Center Name')
                        ],
                      ),
                busy
                    ? Container()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: hashTextColor,
                          ),
                          CustomText.materialSerialNoText('Address')
                        ],
                      ),
                customButton
                /* CustomButton(
                  0.4.h,
                  5.0.w,
                  lightblueGradientColor,
                  title: 'view',
                  onPressed: () {},
                  busy: true,
                )*/
              ],
            ),
          ),
          Container(
            width: 12.h,
            height: busy ? 10.h : 17.h,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 11.w,
                  height: 5.h,
                  child: Image(
                    image: AssetImage(
                      assetImage,
                    ),
                  ),
                ),
                CustomText.materialSerialNoText(bottomText)
              ],
            ),
          )
        ],
      ),
    );
  }
}
