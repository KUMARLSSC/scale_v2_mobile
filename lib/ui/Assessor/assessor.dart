import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/Assessor/assessment.dart';
import 'package:scaleindia/ui/Assessor/batches.dart';

import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';

class Assessor extends StatelessWidget {
  const Assessor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
        title: 'Assessor',
        leadingIcon: Icon(
          Icons.person_rounded,
          color: blackTextColor,
          size: 32,
        ),
        action: [
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: blackTextColor,
              size: 32,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.help_outline_outlined,
              color: blackTextColor,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
        form: ConnectionCheck(
          child: TopTabBar(
            busy: true,
            length: 3,
            tabs: [
              CustomText.topTabText('Batches'),
              CustomText.topTabText('Asssessment'),
              CustomText.topTabText('History')
            ],
            tabBarView: [
              Batch(),
              Assessment(),
            ],
          ),
        ));
  }
}
