import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/candidate_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
        builder: (context, model, child) => CustomAppBarWidget(
            title: 'Summary',
            leadingIcon: Icon(
              Icons.arrow_back_ios,
              color: blackTextColor,
              size: 18.sp,
            ),
            form: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                      Container(
                        width: 90.w,
                        height: 15.2.h,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfffdfdfd),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "____________ consists of instructions of the work to be carried out by basic closing operator.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Row(
                              children: [
                                Text(
                                  "ANSWER : ",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.sp,
                                      fontFamily: 'Ubuntu'),
                                ),
                                Text(
                                  "Selected",
                                  style: TextStyle(
                                      color: Color(0xff05721d),
                                      fontSize: 18.sp,
                                      fontFamily: 'Ubuntu'),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                      Container(
                        width: 90.w,
                        height: 15.2.h,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfffdfdfd),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "____________ consists of instructions of the work to be carried out by basic closing operator.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Row(
                              children: [
                                Text(
                                  "ANSWER : ",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.sp,
                                      fontFamily: 'Ubuntu'),
                                ),
                                Text(
                                  "Not Selected",
                                  style: TextStyle(
                                      color: Color(0xffe10000),
                                      fontSize: 18.sp,
                                      fontFamily: 'Ubuntu'),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  verticalSpaceLarge,
                  Center(
                      child: CustomButton(4.5, 27, customButtonGradientColor,
                          title: 'Submit',
                          onPressed: model.navigateToCongratulation))
                ],
              ),
            )),
        viewModelBuilder: () => CandidateViewModel());
  }
}
