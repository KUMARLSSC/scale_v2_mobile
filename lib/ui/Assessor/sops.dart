import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Assessor/assessor_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/assessment_sop_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class AssessmentSOP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssessorViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
              title: 'Batch - 1',
              leadingIcon: Icon(
                Icons.arrow_back_ios,
                color: blackTextColor,
                size: 32,
              ),
              form: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(child: CustomText.textStyle30("SOP'S")),
                      CustomText.materialSerialNoText("Complete all the sop's"),
                      verticalSpaceTiny,
                      AssessmentSOPWidget(),
                      verticalSpaceTiny,
                      AssessmentSOPWidget(),
                      verticalSpaceTiny,
                      AssessmentSOPWidget(),
                      verticalSpaceTiny,
                      AssessmentSOPWidget(),
                      verticalSpaceMedium,
                      CustomButton(
                        0.7.h,
                        8.0.w,
                        customButtonGradientColor,
                        title: 'Start',
                        onPressed: model.navigateToPracticalAssessment,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
