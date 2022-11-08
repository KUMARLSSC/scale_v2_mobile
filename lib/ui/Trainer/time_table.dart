import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Trainer/trainer_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_button_1.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';
import 'package:scaleindia/widgets/trainer_timetable_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

class TrainerTimeTable extends StatelessWidget {
  const TrainerTimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrainerViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            title: 'Time Table',
            leadingIcon: Icon(
              Icons.calendar_today,
              color: blackTextColor,
              size: 23.sp,
            ),
            action: [
              IconButton(
                icon: Icon(
                  Icons.help_outline_outlined,
                  color: blackTextColor,
                  size: 28.sp,
                ),
                onPressed: () {},
              ),
            ],
            form: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TopTabBar(
                length: 5,
                tabs: [
                  CustomButton1(
                    10,
                    23,
                    greenGradientColor,
                    day: 'Mon',
                    date: '17-05-21',
                    busy: true,
                  ),
                  CustomButton1(
                    10,
                    23,
                    customButtonGradientColor,
                    day: 'Tue',
                    date: '18-05-21',
                  ),
                  CustomButton1(
                    10,
                    23,
                    hashGradientColor,
                    day: 'Wed',
                    date: '19-05-21',
                  ),
                  CustomButton1(
                    10,
                    23,
                    hashGradientColor,
                    day: 'Thu',
                    date: '19-05-21',
                  ),
                  CustomButton1(
                    10,
                    23,
                    hashGradientColor,
                    day: 'Fri',
                    date: '19-05-21',
                  ),
                ],
                tabBarView: [
                  ListView(
                    children: [
                      TimeTableWidget(
                        greenGradientColor,
                        '1',
                        blackTextColor,
                        whiteTextColor,
                        Color(0xff32b703),
                        '1 hour ago',
                        'Completed',
                        Color(0xff00ff28),
                        Colors.greenAccent,
                        onPressed: () {},
                      ),
                      verticalSpaceSmall,
                      TimeTableWidget(
                        greenGradientColor,
                        '3',
                        blackTextColor,
                        whiteTextColor,
                        Color(0xff32b703),
                        'Just Now',
                        'Completed',
                        Color(0xff00ff28),
                        Colors.greenAccent,
                        onPressed: () {},
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      TimeTableWidget(
                        timetableBlueGradientColor,
                        '10',
                        blackTextColor,
                        whiteTextColor,
                        Color(0xff0c5660),
                        '10 Mintues to Start',
                        'Join',
                        Color(0xffff0505),
                        Colors.blueAccent,
                        onPressed: model.navigateToTrainerBatch,
                      ),
                      verticalSpaceSmall,
                      TimeTableWidget(
                        hashGradientColor,
                        '21',
                        blackTextColor,
                        blackTextColor,
                        Color(0xffc3bec3),
                        'Today at 11 AM',
                        'Join',
                        whiteTextColor,
                        Colors.black54,
                        onPressed: () {},
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      TimeTableWidget(
                        hashGradientColor,
                        '21',
                        blackTextColor,
                        blackTextColor,
                        Color(0xffc3bec3),
                        'Today at 11 AM',
                        'Join',
                        whiteTextColor,
                        Colors.black54,
                        onPressed: () {},
                      ),
                      verticalSpaceSmall,
                      TimeTableWidget(
                        hashGradientColor,
                        '21',
                        blackTextColor,
                        blackTextColor,
                        Color(0xffc3bec3),
                        'Today at 11 AM',
                        'Join',
                        whiteTextColor,
                        Colors.black54,
                        onPressed: () {},
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      TimeTableWidget(
                        hashGradientColor,
                        '21',
                        blackTextColor,
                        blackTextColor,
                        Color(0xffc3bec3),
                        'Today at 11 AM',
                        'Join',
                        whiteTextColor,
                        Colors.black54,
                        onPressed: () {},
                      ),
                      verticalSpaceSmall,
                      TimeTableWidget(
                        hashGradientColor,
                        '21',
                        blackTextColor,
                        blackTextColor,
                        Color(0xffc3bec3),
                        'Today at 11 AM',
                        'Join',
                        whiteTextColor,
                        Colors.black54,
                        onPressed: () {},
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      TimeTableWidget(
                        hashGradientColor,
                        '21',
                        blackTextColor,
                        blackTextColor,
                        Color(0xffc3bec3),
                        'Today at 11 AM',
                        'Join',
                        whiteTextColor,
                        Colors.black54,
                        onPressed: () {},
                      ),
                      verticalSpaceSmall,
                      TimeTableWidget(
                        hashGradientColor,
                        '21',
                        blackTextColor,
                        blackTextColor,
                        Color(0xffc3bec3),
                        'Today at 11 AM',
                        'Join',
                        whiteTextColor,
                        Colors.black54,
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            )),
        viewModelBuilder: () => TrainerViewModel());
  }
}
