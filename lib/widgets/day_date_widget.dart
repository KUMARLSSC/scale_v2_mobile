import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/custom_button_1.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';
import 'package:sizer/sizer.dart';

import 'assessor_batch_widget.dart';

class DayDateWidget extends StatefulWidget {
  final void Function()? onPressed;
  DayDateWidget({this.onPressed});
  @override
  _DayDateWidgetState createState() => _DayDateWidgetState();
}

class _DayDateWidgetState extends State<DayDateWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TopTabBar(
        tabs: [
          CustomButton1(
            1.6.h,
            8.w,
            greenGradientColor,
            day: 'Mon',
            date: '17-05-21',
            busy: true,
          ),
          CustomButton1(
            1.6.h,
            8.w,
            greenGradientColor,
            day: 'Tue',
            date: '17-05-21',
            busy: true,
          ),
          CustomButton1(
            1.6.h,
            8.w,
            customButtonGradientColor,
            day: 'Wed',
            date: '17-05-21',
          ),
          CustomButton1(
            1.6.h,
            8.w,
            hashGradientColor,
            day: 'Thu',
            date: '17-05-21',
          ),
          CustomButton1(
            1.6.h,
            8.w,
            hashGradientColor,
            day: 'Fri',
            date: '17-05-21',
          ),
        ],
        length: 5,
        tabBarView: [
          ListView(
            children: [
              AssessorBatchWidget(
                greenGradientColor,
                'Completed',
                blackTextColor,
                'assets/images/completed.gif',
                CustomButton(
                  0.4.h,
                  7.0.w,
                  greenGradientColor,
                  title: 'Completed',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.greenAccent,
              ),
              verticalSpaceTiny,
              AssessorBatchWidget(
                greenGradientColor,
                'Completed',
                blackTextColor,
                'assets/images/completed.gif',
                CustomButton(
                  0.4.h,
                  7.0.w,
                  greenGradientColor,
                  title: 'Completed',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.greenAccent,
              ),
            ],
          ),
          ListView(
            children: [
              AssessorBatchWidget(
                greenGradientColor,
                'Completed',
                blackTextColor,
                'assets/images/completed.gif',
                CustomButton(
                  0.4.h,
                  7.0.w,
                  greenGradientColor,
                  title: 'Completed',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.greenAccent,
              ),
              verticalSpaceTiny,
              AssessorBatchWidget(
                greenGradientColor,
                'Completed',
                blackTextColor,
                'assets/images/completed.gif',
                CustomButton(
                  0.4.h,
                  7.0.w,
                  greenGradientColor,
                  title: 'Completed',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.greenAccent,
              ),
            ],
          ),
          ListView(
            children: [
              AssessorBatchWidget(
                greenGradientColor,
                'Completed',
                blackTextColor,
                'assets/images/completed.gif',
                CustomButton(
                  0.4.h,
                  7.0.w,
                  greenGradientColor,
                  title: 'Completed',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.greenAccent,
              ),
              verticalSpaceTiny,
              AssessorBatchWidget(
                lightblueGradientColor,
                'Start at 01:00 AM',
                blackTextColor,
                'assets/images/assessment.gif',
                CustomButton(
                  0.4.h,
                  5.0.w,
                  lightblueGradientColor,
                  title: 'Start',
                  onPressed: this.widget.onPressed,
                  busy: true,
                ),
                Colors.blue,
              ),
            ],
          ),
          ListView(
            children: [
              AssessorBatchWidget(
                hashGradientColor,
                'Start at 01:00 AM',
                blackTextColor,
                'assets/images/assessment.gif',
                CustomButton(
                  0.4.h,
                  5.0.w,
                  hashGradientColor,
                  title: 'Start',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.grey,
              ),
              verticalSpaceTiny,
              AssessorBatchWidget(
                hashGradientColor,
                'Start at 01:00 AM',
                blackTextColor,
                'assets/images/assessment.gif',
                CustomButton(
                  0.4.h,
                  5.0.w,
                  hashGradientColor,
                  title: 'Start',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.grey,
              ),
            ],
          ),
          ListView(
            children: [
              AssessorBatchWidget(
                hashGradientColor,
                'Start at 01:00 AM',
                blackTextColor,
                'assets/images/assessment.gif',
                CustomButton(
                  0.4.h,
                  5.0.w,
                  hashGradientColor,
                  title: 'Start',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.grey,
              ),
              verticalSpaceTiny,
              AssessorBatchWidget(
                hashGradientColor,
                'Start at 01:00 AM',
                blackTextColor,
                'assets/images/assessment.gif',
                CustomButton(
                  0.4.h,
                  5.0.w,
                  hashGradientColor,
                  title: 'Start',
                  onPressed: () {},
                  busy: true,
                ),
                Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
