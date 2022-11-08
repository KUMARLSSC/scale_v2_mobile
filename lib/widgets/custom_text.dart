import 'package:flutter/material.dart';
import 'package:scaleindia/constants/text_styles.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  CustomText.appBarText(this.text) : style = appBarTextStyle;
  CustomText.whiteappBarText(this.text) : style = whiteappBarTextStyle;
  CustomText.topTabText(this.text) : style = topTabTextStyle;
  CustomText.bottomTabText(this.text) : style = bottomTabTextStyle;
  CustomText.trainerCandidateText(this.text)
      : style = trainerCandidateTextStyle;
  CustomText.candidateIDText(this.text) : style = candidateIDTextStyle;
  CustomText.materialSerialNoText(this.text)
      : style = materialSerialNoTextStyle;
  CustomText.onlineClasscandidatenameText(this.text)
      : style = onlineClasscandidatenameTextStyle;
  CustomText.scoreText(this.text) : style = scoreTextStyle;
  CustomText.onboardingHeadText(this.text) : style = onboardingHeadTextStyle;
  CustomText.buttonTitleText(this.text) : style = buttonTitleTextStyle;
  CustomText.whitbuttonTitleText(this.text) : style = whitebuttonTitleTextStyle;
  CustomText.assessmentBatchText(this.text) : style = assessmentBatch;
  CustomText.assessmentBatchDetail(this.text) : style = assessmentBatchDetail;
  CustomText.textStyle30(this.text) : style = textStyle30;
  CustomText.candidateName(this.text) : style = candidateNameText;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: style,
    );
  }
}
