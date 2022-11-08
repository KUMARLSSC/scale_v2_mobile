import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AssessorViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void navigateToAssessmentBatchMap() =>
      _navigationService.navigateTo(Routes.assessmentBatchMap);

  void navigateToSop() => _navigationService.navigateTo(Routes.assessmentSOP);

  void navigateToPracticalAssessment() =>
      _navigationService.navigateTo(Routes.practicalAssessment);
  void navigateToPracticalMark() =>
      _navigationService.navigateTo(Routes.practicalMark);
  void navigateToCheckMarks() =>
      _navigationService.navigateTo(Routes.checkMarks);
  void navigateToAssessmentBatch() =>
      _navigationService.navigateTo(Routes.assessmentBatch);
  void navigateToBatchCandidates() =>
      _navigationService.navigateTo(Routes.batchCandidates);
}
