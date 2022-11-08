import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Assessor/assessor_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

class AssessmentBatch extends StatelessWidget {
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                      child: Table(
                        textDirection: TextDirection.ltr,
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border:
                            TableBorder.all(width: 1.0, color: Colors.blueGrey),
                        children: [
                          TableRow(children: [
                            CustomText.assessmentBatchText('Batch : '),
                            CustomText.assessmentBatchDetail('1')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Candidates : '),
                            CustomText.assessmentBatchDetail('20'),
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText(
                                'Assessment Date : '),
                            CustomText.assessmentBatchDetail('18-05-2021')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Subject : '),
                            CustomText.assessmentBatchDetail(
                              'Foot Wear Operator Moulding',
                            )
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Center Name : '),
                            CustomText.assessmentBatchDetail('Name')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Start Time : '),
                            CustomText.assessmentBatchDetail('10:00 AM')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('End Time : '),
                            CustomText.assessmentBatchDetail('11:30 AM')
                          ]),
                          TableRow(children: [
                            CustomText.assessmentBatchText('Address : '),
                            CustomText.assessmentBatchDetail('Address')
                          ]),
                        ],
                      ),
                    ),
                    verticalSpaceMedium,
                    Container(
                      width: 337,
                      height: 28.2.h,
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
                    verticalSpaceMedium,
                    CustomButton(
                      0.7.h,
                      8.0.w,
                      customButtonGradientColor,
                      title: 'START',
                      onPressed: model.navigateToAssessmentBatchMap,
                    ),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
