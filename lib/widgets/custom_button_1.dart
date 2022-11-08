import 'package:flutter/material.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

/// A button that shows a busy indicator in place of title
class CustomButton1 extends StatefulWidget {
  final bool busy;
  final String date;
  final bool enabled;
  final double height;
  final String day;
  final double width;
  final Gradient gradient;

  const CustomButton1(
    this.height,
    this.width,
    this.gradient, {
    required this.day,
    required this.date,
    this.busy = false,
    this.enabled = true,
  });

  @override
  _CustomButton1State createState() => _CustomButton1State();
}

class _CustomButton1State extends State<CustomButton1> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
          height: widget.busy ? this.widget.height.h : this.widget.height.h,
          width: widget.busy ? this.widget.width.w : this.widget.width.w,
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: widget.busy ? widget.gradient : widget.gradient,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              widget.busy
                  ? BoxShadow(color: Colors.white)
                  : BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset.zero,
                    )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.busy
                  ? CustomText.buttonTitleText(
                      widget.date,
                    )
                  : CustomText.whitbuttonTitleText(widget.date),
              widget.busy
                  ? CustomText.appBarText(
                      widget.day,
                    )
                  : CustomText.whiteappBarText(widget.day),
            ],
          )),
    );
  }
}
