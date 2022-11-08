import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/SSDM/ssdm_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/create_batch_widget.dart';
import 'package:stacked/stacked.dart';

class SSDMCreateBatch extends StatelessWidget {
  const SSDMCreateBatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SSDMViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            title: 'Create Batch',
            leadingIcon: Icon(
              Icons.arrow_back_ios,
              color: blackTextColor,
              size: 32,
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
              nextButton: model.navigateToCreateSop,
            )),
        viewModelBuilder: () => SSDMViewModel());
  }
}
