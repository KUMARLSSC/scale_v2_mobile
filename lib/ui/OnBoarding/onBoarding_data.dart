import 'package:flutter/material.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:sizer/sizer.dart';

class OnbordingData extends StatefulWidget {
  final imagePath;
  final title;
  final desc;

  OnbordingData({this.imagePath, this.title, this.desc});

  @override
  _OnbordingDataState createState() =>
      _OnbordingDataState(this.imagePath, this.title, this.desc);
}

class _OnbordingDataState extends State<OnbordingData> {
  final imagePath;
  final title;
  final desc;
  _OnbordingDataState(this.imagePath, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image(
          fit: BoxFit.cover,
          width: double.infinity,
          height: 37.h,
          image: AssetImage(imagePath),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w800),
          ),
        ),
        verticalSpaceLarge,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 17.h,
            width: 80.w,
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.sp,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
