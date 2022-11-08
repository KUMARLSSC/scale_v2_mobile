import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Candidate/candidate_viewmodel.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CandidateViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: ListView(
                children: [
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 4.3.w,
                        height: 3.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/scalelogo.png'),
                        ),
                      ),
                      horizontalSpaceSmall,
                      Text(
                        "Scale India",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image(
                          image:
                              AssetImage('assets/images/congratulation1.gif')),
                      Image(
                          image:
                              AssetImage('assets/images/congratulation3.gif'))
                    ],
                  ),
                  Text(
                    "Congratulations!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontFamily: 'Ubuntu'),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          key: key,
                          radius: 25.sp,
                          backgroundColor: whiteTextColor,
                          child: Image(
                            width: 10.w,
                            height: 8.h,
                            image: AssetImage('assets/images/profile.gif'),
                          ),
                        ),
                        horizontalSpaceRegular,
                        Column(
                          children: [
                            Text(
                              "Hi Kumaresan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Text(
                              "ID - 1234567890",
                              style: TextStyle(
                                  color: Color(0xff686060),
                                  fontSize: 14.sp,
                                  fontFamily: 'Ubuntu'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                    height: 6.5.h,
                    child: Text(
                      "Theory Assessment was completed successfully",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff373434),
                          fontSize: 16.sp,
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.only(left: 120, right: 120),
                    child: CustomButton(5.9, 27, customButtonGradientColor,
                        title: 'Done', onPressed: model.navigateToCandidate),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => CandidateViewModel());
  }
}
