import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SSDMViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToSSDMCreateBatch() =>
      _navigationService.navigateTo(Routes.ssdmCreateBatch);

  void navigateToCreateSop() => _navigationService.navigateTo(Routes.createSOP);
}
