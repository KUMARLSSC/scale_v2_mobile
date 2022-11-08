import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/constants/responsive_size.dart';
import 'package:scaleindia/ui/Registration/registration_viewmodel.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:scaleindia/widgets/custom_button.dart';
import 'package:scaleindia/widgets/expansion_list_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

//User Role Selecting for Registration
class UserRoleSelecting extends StatefulWidget {
  const UserRoleSelecting({Key? key}) : super(key: key);

  @override
  _UserRoleSelectingState createState() => _UserRoleSelectingState();
}

class _UserRoleSelectingState extends State<UserRoleSelecting> {
  final List<String> role = [
    'Candidate',
    'Trainer',
    'SSDM',
    'TrainingPartner',
    'Employer',
    'Assessor'
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistrationViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              backgroundColor: whiteTextColor,
              key: widget.key,
              resizeToAvoidBottomInset: false,
              body: ConnectionCheck(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                    verticalSpaceLarge,
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
                        horizontalSpaceMedium,
                        Text(
                          "Scale India",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontFamily: 'Ubuntu'),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Select a Role",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontFamily: 'Ubuntu'),
                    ),
                    verticalSpaceTiny,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        height: 13.h,
                        child: Text(
                          'user roles are the method you use to assign the rights needed to access monitoring data and perform actions. User roles are designed to apply to groups of users that need access to and perform actions on the same group of monitored objects.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11.sp,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 40),
                      child: ExpansionList<String>(
                          items: role,
                          title: model.selectedRole,
                          onItemSelected: model.setSelectedRole),
                    ),
                    verticalSpaceRegular,
                    CustomButton(6, 30, customButtonGradientColor,
                        title: 'NEXT', onPressed: () {
                      model.navigateToCandidateRegistration();
                    }),
                    verticalSpaceLarge,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Powered by",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff7e7a7a),
                              fontSize: 12.sp,
                              fontFamily: 'Ubuntu'),
                        ),
                        Image(
                          fit: BoxFit.fitWidth,
                          width: 10.w,
                          height: 3.h,
                          image: AssetImage('assets/images/lssc.png'),
                        ),
                      ],
                    ),
                    Text(
                      "Version 2.0",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff867f7f),
                          fontSize: 12.sp,
                          fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => RegistrationViewModel());
  }
}
