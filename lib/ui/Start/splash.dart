import 'package:flutter/material.dart';
import 'package:scaleindia/ui/Splash/splash_viewmodel.dart';
import 'package:scaleindia/widgets/loader_animation.dart';
import 'package:stacked/stacked.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController? animationController;
  Animation<double>? animation;
  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 1));
    animation = new CurvedAnimation(
        parent: animationController!, curve: Curves.easeOut);

    animation!.addListener(() => this.setState(() {}));
    animationController!.forward();

    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashPageViewModel>.reactive(
      viewModelBuilder: () => SplashPageViewModel(),
      onModelReady: (model) => model.handleStartUpLogic(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
                height: animation!.value * 100,
                width: animation!.value * 250,
              ),
              SizedBox(
                height: 30,
              ),
              ColorLoader3(
                radius: 20.0,
                dotRadius: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
