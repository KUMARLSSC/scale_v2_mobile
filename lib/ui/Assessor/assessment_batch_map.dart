import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';
import 'assessor_viewmodel.dart';

class AssessmentBatchMap extends StatelessWidget {
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
              action: [
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: blackTextColor,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
              ],
              form: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: 337,
                      height: 50.2.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/map.png',
                            ),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    CustomText.bottomTabText('25 mintues to reach the center'),
                    verticalSpaceTiny,
                    Center(
                      child: Table(
                        textDirection: TextDirection.ltr,
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border:
                            TableBorder.all(width: 1.0, color: Colors.blueGrey),
                        children: [
                          TableRow(children: [
                            CustomText.assessmentBatchText('Center : '),
                            CustomText.assessmentBatchDetail('Name')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Address : '),
                            CustomText.assessmentBatchDetail('Address')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Candidates : '),
                            CustomText.assessmentBatchDetail('20'),
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Start Time : '),
                            CustomText.assessmentBatchDetail('10:00 AM')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('End Time : '),
                            CustomText.assessmentBatchDetail('11:30 AM')
                          ]),
                        ],
                      ),
                    ),
                    verticalSpaceMedium,
                    CustomButton(
                      0.7.h,
                      8.0.w,
                      customButtonGradientColor,
                      title: 'Reached',
                      onPressed: model.navigateToSop,
                    ),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
