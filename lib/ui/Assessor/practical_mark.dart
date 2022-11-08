import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/Assessor/assessor_viewmodel.dart';
import 'package:scaleindia/widgets/app_bar_widget.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class PracticalMark extends StatelessWidget {
  const PracticalMark({Key? key}) : super(key: key);

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomText.appBarText('Questions - 1/20'),
                          CustomButton(
                            0.6.h,
                            7.0.w,
                            candidate1GradientColor,
                            title: 'Check',
                            onPressed: () {},
                            busy: true,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      key: key,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      width: 60.6.w,
                      height: 5.8.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        color: Color.fromRGBO(232, 232, 232, 0),
                      ),
                      child: CustomText.appBarText('MEP/N2601'),
                    ),
                    Container(
                      width: 93.7.w,
                      height: 60.1.h,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white, Color(0xff9be9fb)],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 87.6.w,
                            height: 10.h,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff7eb4bc),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "No common Questtions for this MEP/N2601",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 20.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff21bd07),
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Ubuntu'),
                                ),
                              ),
                              Container(
                                width: 69.6.w,
                                child: Text(
                                  "Participate in formal and informal professional networks to support continuous learning",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Work Sans"),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              width: 31.6.w,
                              height: 14.4.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: candidateColor1,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/upload.gif',
                                  ),
                                ),
                              )),
                          Text(
                            "Capture a video and upload",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff6e5d5d),
                                fontSize: 10,
                                fontFamily: 'Ubuntu'),
                          ),
                          Text(
                            "Max Marks : 20",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff2d2727),
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 50.0, right: 50.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteTextColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextFormField(
                                decoration: new InputDecoration(
                                    labelText: "Enter Marks",
                                    fillColor: Colors.white,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    )),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(0.82.h, 10.3.w, hashGradientColor,
                              title: 'Previous', onPressed: () {}),
                          CustomButton(
                              0.82.h, 10.3.w, customButtonGradientColor,
                              title: 'Next',
                              onPressed: model.navigateToCheckMarks)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => AssessorViewModel());
  }
}
