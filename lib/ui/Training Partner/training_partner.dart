import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/Training%20Partner/QPs.dart';
import 'package:scaleindia/ui/Training%20Partner/pmkvy.dart';
import 'package:scaleindia/ui/Training%20Partner/tot.dart';
import 'package:scaleindia/ui/Training%20Partner/tp_batches.dart';
import 'package:scaleindia/ui/Training%20Partner/tp_trainer.dart';
import 'package:scaleindia/ui/Training%20Partner/training_partner_viewmodel.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:scaleindia/widgets/top_tab_bar_widget.dart';
import 'package:stacked/stacked.dart';

class TrainingPartner extends StatelessWidget {
  const TrainingPartner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrainingPartnerViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            folatingActionButtion: new FloatingActionButton(
              onPressed: model.navigateToTPCreateBatch,
              child: const Icon(Icons.add),
            ),
            title: 'Training Partner',
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
                length: 5,
                tabs: [
                  CustomText.topTabText('Batches'),
                  CustomText.topTabText("QP'S"),
                  CustomText.topTabText('Trainers'),
                  CustomText.topTabText('PMKVY'),
                  CustomText.topTabText('TOT(Tarining of Trainers)')
                ],
                tabBarView: [
                  TPBatches(
                    key: key,
                  ),
                  QPs(
                    key: key,
                  ),
                  TPTrainers(
                    key: key,
                  ),
                  PMKVY(
                    key: key,
                  ),
                  TOT(
                    key: key,
                  ),
                ],
              ),
            )),
        viewModelBuilder: () => TrainingPartnerViewModel());
  }
}
