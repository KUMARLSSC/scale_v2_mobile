import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/Trainer/attandence.dart';
import 'package:scaleindia/ui/Trainer/model_QPs.dart';
import 'package:scaleindia/ui/Trainer/study_materials.dart';
import 'package:scaleindia/ui/Trainer/trainer_candidates.dart';
import 'package:scaleindia/ui/Trainer/trainer_summary.dart';
import 'package:scaleindia/ui/Trainer/trainer_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class TrainerBatch extends StatelessWidget {
  const TrainerBatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrainerViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            title: 'Batch - ID',
            leadingIcon: Icon(
              Icons.arrow_back_ios,
              color: blackTextColor,
              size: 20.sp,
            ),
            action: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 25.w,
                  height: 2.5.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                    color: Color(0xff2c455b),
                  ),
                  child: Text(
                    "Go Live",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
            form: TopTabBar(
              busy: true,
              length: 5,
              tabs: [
                CustomText.topTabText('Summary'),
                CustomText.topTabText("Candidates"),
                CustomText.topTabText('Attandence'),
                CustomText.topTabText('Study Material '),
                CustomText.topTabText("Model QP'S")
              ],
              tabBarView: [
                TrainerSummary(),
                TrainerCandidates(),
                CandidateAttandence(),
                StudyMaterial(),
                ModelQPS()
              ],
            )),
        viewModelBuilder: () => TrainerViewModel());
  }
}
