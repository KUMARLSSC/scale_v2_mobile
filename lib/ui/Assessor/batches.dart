import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Assessor/assessor_viewmodel.dart';
import 'package:scaleindia/widgets/assessor_batch_widget.dart';
import 'package:scaleindia/widgets/batch_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class Batch extends StatelessWidget {
  const Batch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AssessorViewModel>.reactive(
        builder: (context, model, child) => BatchTab(
              onPressed: model.navigateToBatchCandidates,
              text1: 'All',
              text2: 'New',
              tabBarView: TabBarView(
                children: <Widget>[
                  ListView(
                    children: [
                      AssessorBatchWidget(
                        lightblueGradientColor,
                        'Today',
                        blackTextColor,
                        'assets/images/assessor1.gif',
                        CustomButton(
                          0.4.h,
                          5.0.w,
                          lightblueGradientColor,
                          title: 'view',
                          onPressed: model.navigateToBatchCandidates,
                          busy: true,
                        ),
                        Color(0xff00ffc1),
                        busy: true,
                      ),
                      verticalSpaceTiny,
                      AssessorBatchWidget(
                        lightblueGradientColor,
                        'Today',
                        blackTextColor,
                        'assets/images/assessor1.gif',
                        CustomButton(
                          0.4.h,
                          5.0.w,
                          lightblueGradientColor,
                          title: 'view',
                          onPressed: model.navigateToBatchCandidates,
                          busy: true,
                        ),
                        Color(0xff00ffc1),
                        busy: true,
                      ),
                      verticalSpaceTiny,
                      AssessorBatchWidget(
                        lightblueGradientColor,
                        'Today',
                        blackTextColor,
                        'assets/images/assessor1.gif',
                        CustomButton(
                          0.4.h,
                          5.0.w,
                          lightblueGradientColor,
                          title: 'view',
                          onPressed: model.navigateToBatchCandidates,
                          busy: true,
                        ),
                        Color(0xff00ffc1),
                        busy: true,
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      AssessorBatchWidget(
                        redGradientColor,
                        'New',
                        whiteTextColor,
                        'assets/images/red_new.gif',
                        CustomButton(
                          0.4.h,
                          5.0.w,
                          redGradientColor,
                          title: 'Accept',
                          onPressed: () {},
                        ),
                        Color(0xfff79132),
                        busy: true,
                      ),
                      verticalSpaceTiny,
                      AssessorBatchWidget(
                        redGradientColor,
                        'New',
                        whiteTextColor,
                        'assets/images/red_new.gif',
                        CustomButton(
                          0.4.h,
                          5.0.w,
                          redGradientColor,
                          title: 'Accept',
                          onPressed: () {},
                        ),
                        Color(0xfff79132),
                        busy: true,
                      ),
                      verticalSpaceTiny,
                      AssessorBatchWidget(
                        redGradientColor,
                        'New',
                        whiteTextColor,
                        'assets/images/red_new.gif',
                        CustomButton(
                          0.4.h,
                          5.0.w,
                          redGradientColor,
                          title: 'Accept',
                          onPressed: () {},
                        ),
                        Color(0xfff79132),
                        busy: true,
                      ),
                      verticalSpaceTiny,
                    ],
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
