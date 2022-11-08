library flutteronboardingscreens;

import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';
import 'package:scaleindia/ui/OnBoarding/onBoarding.dart';
import 'package:scaleindia/ui/OnBoarding/onBoardingViewModel.dart';
import 'package:scaleindia/ui/OnBoarding/onBoarding_data.dart';
import 'package:scaleindia/ui/net_connection.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

/// A IntroScreen Class.
class IntroScreen extends StatefulWidget {
  final List<OnbordingData> onbordingDataList;

  IntroScreen(this.onbordingDataList, OnBoarding onBoarding);

  @override
  IntroScreenState createState() {
    return new IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == widget.onbordingDataList.length - 1) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  Widget _buildPageIndicator(int page) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: page == currentPage ? 1.0.h : 0.6.h,
      width: page == currentPage ? 2.0.w : 1.w,
      decoration: BoxDecoration(
        color: page == currentPage ? blackTextColor : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      builder: (context, model, child) => ConnectionCheck(
        child: Container(
          color: whiteTextColor,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Expanded(
                flex: 3,
                child: new PageView(
                  children: widget.onbordingDataList,
                  controller: controller,
                  onPageChanged: _onPageChanged,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new TextButton(
                    child: new Text(lastPage ? "" : "SKIP",
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                    onPressed: () => lastPage ? null : model.navigateToEmail(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      child: Row(
                        children: [
                          _buildPageIndicator(0),
                          _buildPageIndicator(1),
                          _buildPageIndicator(2),
                        ],
                      ),
                    ),
                  ),
                  new IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () => lastPage
                        ? model.navigateToEmail()
                        : controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => OnBoardingViewModel(),
    );
  }
}
