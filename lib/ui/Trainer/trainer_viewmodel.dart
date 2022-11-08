import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TrainerViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToTrainerBatch() =>
      _navigationService.navigateTo(Routes.trainerBatch);
}
