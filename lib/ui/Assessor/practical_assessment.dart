import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Assessor/assessor_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/common_candidate.dart';
import 'package:stacked/stacked.dart';

class PracticalAssessment extends StatelessWidget {
  const PracticalAssessment({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                      CommonCandidate(
                        onPressed: model.navigateToPracticalMark,
                      ),
                      verticalSpaceTiny,
                    ],
                  )),
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
