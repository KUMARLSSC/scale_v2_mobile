import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final Widget horizontalSpaceTiny = SizedBox(width: 0.5.w);
final Widget horizontalSpaceSmall = SizedBox(width: 1.w);
final Widget horizontalSpaceRegular = SizedBox(width: 1.8.w);
final Widget horizontalSpaceMedium = SizedBox(width: 2.5.w);
final Widget horizontalSpaceLarge = SizedBox(width: 5.w);

final Widget verticalSpaceTiny = SizedBox(height: 1.2.h);
final Widget verticalSpaceSmall = SizedBox(height: 1.h);
final Widget verticalSpaceRegular = SizedBox(height: 1.8.h);
final Widget verticalSpaceMedium = SizedBox(height: 2.5.h);
final Widget verticalSpaceLarge = SizedBox(height: 5.h);

// Screen Size helpers

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
