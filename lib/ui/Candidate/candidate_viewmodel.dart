import 'dart:io';

import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CandidateViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToPublicAssessmentWelcome() =>
      _navigationService.navigateTo(Routes.publicAssessmentWelcome);

  void navigateToAssessmentRulesCondition() =>
      _navigationService.navigateTo(Routes.assessmentRulesCondition);

  void navigateToUploadImageAadhar() =>
      _navigationService.navigateTo(Routes.uploadImageAadhar);
  void navigateToTheoryAssessmentInstruction() =>
      _navigationService.navigateTo(Routes.theoryAssessmentInstruction);
  void navigateToTheoryAssessment() =>
      _navigationService.navigateTo(Routes.theoryAssessment);
  void navigateToSummary() => _navigationService.navigateTo(Routes.summary);
  void navigateToCongratulation() =>
      _navigationService.navigateTo(Routes.congratulations);
  void navigateToCandidate() => _navigationService.navigateTo(Routes.candidate);

  void navigateToElearning() => _navigationService.navigateTo(Routes.elearning);
  void navigateToScorm() => _navigationService.navigateTo(Routes.scorm);

  Future<void> logout() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.remove('email');
    sharedPreferences.remove('role');
    _navigationService.navigateTo(Routes.email);
  }

  Future<bool> close() async {
    return exit(0);
  }
}
