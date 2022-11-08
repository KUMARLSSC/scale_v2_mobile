import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/Candidate/assessment_rules_condition.dart';
import 'package:scaleindia/ui/Candidate/theory_assessment_instruction.dart';

import 'package:sizer/sizer.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/app_locator.dart';
import 'app/app_router.dart';
import 'ui/Candidate/theory_assessment.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Scale India',
          theme: new ThemeData(
            primaryColor: whiteTextColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: TheoryAssessment(
            key: key,
          ),
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute);
    });
  }
}
