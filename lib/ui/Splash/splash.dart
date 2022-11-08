import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:scaleindia/constants/image_shared.dart';
import 'package:scaleindia/ui/Splash/splash_viewmodel.dart';
import 'package:scaleindia/widgets/loader_animation.dart';
import 'package:stacked/stacked.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashPageViewModel>.reactive(
      viewModelBuilder: () => SplashPageViewModel(),
      onModelReady: (model) =>
          SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
        model.handleStartUpLogic();
      }),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(top: 125.sp),
          child: ListView(
            children: [
              Center(
                child: splashPage(),
              ),
              SizedBox(
                height: 17.h,
              ),
              Center(
                child: CircularProgressIndicator(
                  color: Colors.white38,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Text('#RespectSkills',
                    style: TextStyle(
                        fontSize: 32.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splashImage.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
