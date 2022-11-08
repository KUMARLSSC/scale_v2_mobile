import 'package:flutter/material.dart';
import 'package:scaleindia/constants/image_shared.dart';
import 'package:scaleindia/ui/OnBoarding/onBoarding_data.dart';

import 'flutteronboardingscreens.dart';

class OnBoarding extends StatelessWidget {
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: onBoardingImage,
      title: "Easy to Use",
      desc:
          "SCALE India, an android app aimed to integrate quality assurance under Skill India Mission was launched by Leather Sector Skill Council (leatherssc.org), a non-profit organization (NGO).",
    ),
    OnbordingData(
      imagePath: onBoardingImage,
      title: "Security",
      desc:
          "Mobile application security focuses on the software security posture of mobile apps on various platforms like Android, iOS, and Windows Phone. ... These applications have access to large amounts of user data, much of which is sensitive data and must be protected from unauthorized access.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreen(list, OnBoarding());
  }
}
