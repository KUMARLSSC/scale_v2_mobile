import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_logger.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashPageViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final log = getLogger('StartUpViewModel');
  Future<void> handleStartUpLogic() async {
    Future.delayed(Duration(seconds: 3), () => onBoardLogic());
    log.v('Splash Page Successfully Launched');
  }

//startup login function
  Future onBoardLogic() async {
    final prefs = await SharedPreferences.getInstance();
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString('email');
    var role = sharedPreferences.getString('role');
    print(obtainedEmail);
    bool _seen = (prefs.getBool('seen') ?? false);
    if (_seen) {
      if (obtainedEmail == null) {
        _navigationService.navigateTo(Routes.email);
        log.v('OnBoarding Page Launched Already');
        log.v('Email Page Launched Successfully');
      } else {
        if (role == '[CANDIDATE]') {
          _navigationService.navigateTo(Routes.candidate);
          log.v('Candidate Page Launched Successfully');
        }
        if (role == '[TRAINER]') {
          await _navigationService.navigateTo(Routes.trainer);
          log.v('Trainer Page Successfully Launched');
        }
        if (role == '[ASSESSOR]') {
          await _navigationService.navigateTo(Routes.assessor);
          log.v('Assessor Page Successfully Launched');
        }
        if (role == '[TRAININGPARTNER]') {
          await _navigationService.navigateTo(Routes.trainingPartner);
          log.v('TrainingPartner Page Successfully Launched');
        }
        if (role == '[EMPLOYER]') {
          await _navigationService.navigateTo(Routes.employer);
          log.v('Employer Page Successfully Launched');
        }
        if (role == '[SSDM]') {
          await _navigationService.navigateTo(Routes.ssdm);
          log.v('SSDM Page Successfully Launched');
        }
      }

      // log.v('OnBoarding Page Launched Already');
      //log.v('Email Page Launched Successfully');
    } else {
      prefs.setBool('seen', true);
      _navigationService.navigateTo(Routes.onBoarding);
      log.v('OnBoarding Page Successfully Launched');
    }
  }
}
