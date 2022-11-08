import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/SSDM/ssdm_batch.dart';
import 'package:scaleindia/ui/SSDM/ssdm_candidates.dart';
import 'package:scaleindia/ui/SSDM/ssdm_training_partners.dart';
import 'package:scaleindia/ui/SSDM/ssdm_viewmodel.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';
import 'package:stacked/stacked.dart';

class SSDM extends StatelessWidget {
  const SSDM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SSDMViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            folatingActionButtion: new FloatingActionButton(
              onPressed: model.navigateToSSDMCreateBatch,
              child: const Icon(Icons.add),
            ),
            title: 'SSDM',
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
                  CustomText.topTabText('Training Partners'),
                  CustomText.topTabText('Candidates')
                ],
                tabBarView: [
                  SSDMBatch(),
                  SSDMTrainingPartners(),
                  SSDMStudents(),
                ],
              ),
            )),
        viewModelBuilder: () => SSDMViewModel());
  }
}
