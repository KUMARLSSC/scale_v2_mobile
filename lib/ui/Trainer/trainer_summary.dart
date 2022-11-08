import 'package:flutter/material.dart';

class TrainerSummary extends StatelessWidget {
  const TrainerSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Here we display the pdf   ",
        style: TextStyle(
          color: Color(0xff968b8b),
          fontSize: 18,
          fontFamily: "Work Sans",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
