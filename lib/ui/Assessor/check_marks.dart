import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Assessor/assessor_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/check_mark_widegt.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class CheckMarks extends StatelessWidget {
  const CheckMarks({Key? key}) : super(key: key);

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
              form: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            key: key,
                            child: Image(
                              image: AssetImage('assets/images/profile.gif'),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText.candidateName('Candidate Name'),
                            CustomText.candidateIDText('ID - 123456789'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Now the admin was monitoring you',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff8c8585),
                              fontFamily: 'Ubuntu'),
                        ),
                      ],
                    ),
                    Container(
                      width: 93.7.w,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "please check you entered marks for all the questions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 18.sp,
                            fontFamily: 'Ubuntu'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 14,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff21bd07),
                          ),
                        ),
                        Text(
                          "= Uploaded",
                          style: TextStyle(
                            color: Color(0xff575151),
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 14,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffff0000),
                          ),
                        ),
                        Text(
                          "= Not Uploaded",
                          style: TextStyle(
                            color: Color(0xff575151),
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "if not uploaded please go back to that question and reupload it",
                      style: TextStyle(
                        color: Color(0xff575151),
                        fontSize: 9,
                      ),
                    ),
                    CheckMarkWidget(
                      key: key,
                    ),
                    verticalSpaceRegular,
                    CustomButton(0.82.h, 10.3.w, customButtonGradientColor,
                        title: 'Submit', onPressed: model.navigateToCheckMarks),
                    SizedBox(
                      height: 5.h,
                    ),
                    new Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
