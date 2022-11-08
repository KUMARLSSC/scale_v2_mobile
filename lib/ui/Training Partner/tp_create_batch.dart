import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/Training%20Partner/training_partner_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/create_batch_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class TPCreateBatch extends StatelessWidget {
  const TPCreateBatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrainingPartnerViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            title: 'Create Batch',
            leadingIcon: Icon(
              Icons.arrow_back_ios,
              color: blackTextColor,
              size: 20.sp,
            ),
            action: [
              IconButton(
                icon: Icon(
                  Icons.help_outline_outlined,
                  color: blackTextColor,
                  size: 32,
                ),
                onPressed: () {},
              ),
            ],
            form: CreateBatchWidget(
              addCandidateButton: model.navigateToAddCandidate,
              nextButton: model.navigateToTPCreateSop,
            )),
        viewModelBuilder: () => TrainingPartnerViewModel());
  }
}
