import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TrainingPartnerViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToTPCreateBatch() =>
      _navigationService.navigateTo(Routes.tpCreateBatch);

  void navigateToTPCreateSop() =>
      _navigationService.navigateTo(Routes.tpcreateSOP);
  void navigateToAssignTrainer() =>
      _navigationService.navigateTo(Routes.assignTrainer);
  void navigateToAddCandidate() =>
      _navigationService.navigateTo(Routes.addCandidateToBatch);
}
