import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EmployerViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToMagzine() => _navigationService.navigateTo(Routes.magzine);
  void navigateToEmployerDrawer() =>
      _navigationService.navigateTo(Routes.employerDrawer);
}
