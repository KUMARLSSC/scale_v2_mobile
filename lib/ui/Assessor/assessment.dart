import 'package:flutter/material.dart';
import 'package:scaleindia/ui/Assessor/assessor_viewmodel.dart';
import 'package:scaleindia/widgets/day_date_widget.dart';
import 'package:stacked/stacked.dart';

class Assessment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssessorViewModel>.reactive(
        builder: (context, model, child) => DayDateWidget(
              onPressed: model.navigateToAssessmentBatch,
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
