import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';

class ELearningTabWidget extends StatelessWidget {
  const ELearningTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopTabBar(
      length: 1,
      tabs: [
        CustomButton(5, 30, customButtonGradientColor,
            title: 'Lessons', onPressed: () {})
      ],
      tabBarView: [],
    );
  }
}
