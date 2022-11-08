import 'package:flutter/material.dart';
import 'package:scaleindia/ui/Training%20Partner/training_partner_viewmodel.dart';
import 'package:scaleindia/widgets/create_sop.dart';
import 'package:stacked/stacked.dart';

class TPCreateSop extends StatelessWidget {
  const TPCreateSop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrainingPartnerViewModel>.reactive(
        builder: (context, model, child) => CreateSOP(
              key: key,
              onPressed: model.navigateToAssignTrainer,
            ),
        viewModelBuilder: () => TrainingPartnerViewModel());
  }
}
