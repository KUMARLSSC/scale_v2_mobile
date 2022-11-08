import 'package:flutter/material.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

import 'loader_animation.dart';

/// A button that shows a busy indicator in place of title
class CustomButton extends StatefulWidget {
  final bool busy;
  final String title;
  final void Function()? onPressed;
  final bool loading;
  final double height;
  final double width;
  final Gradient gradient;

  const CustomButton(this.height, this.width, this.gradient,
      {required this.title,
      this.busy = false,
      required this.onPressed,
      this.loading = false});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.widget.onPressed,
      child: AnimatedContainer(
          height: widget.busy ? this.widget.height.h : this.widget.height.h,
          width: widget.busy ? this.widget.width.w : this.widget.width.w,
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: widget.busy ? widget.gradient : widget.gradient,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 1,
                offset: Offset.zero,
              ),
            ],
          ),
          child: widget.loading
              ? ColorLoader3(
                  radius: 15,
                  dotRadius: 5,
                )
              : widget.busy
                  ? CustomText.buttonTitleText(
                      widget.title,
                    )
                  : CustomText.whitbuttonTitleText(widget.title)),
    );
  }
}
