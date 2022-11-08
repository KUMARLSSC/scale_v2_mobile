import 'package:scaleindia/Core/main_auth.dart';
import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_logger.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegistrationViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final log = getLogger('RegtistrationViewModel');
  final _mainAuth = locator<MainAuthentication>();
  String _selectedRole = 'Select a Role';
  String get selectedRole => _selectedRole;

  void setSelectedRole(dynamic role) {
    _selectedRole = role;
    print(_selectedRole);
    notifyListeners();
  }

  // Navigate Functionality.This Function navigate to user role depend
  Future<void> navigateToCandidateRegistration() async {
    _navigationService.navigateTo(Routes.candidateRegistration);
    log.v('Registration Page Successfully Launched');

    if (_selectedRole == 'Select a Role') {
      await _dialogService.showDialog(
        title: 'Error',
        description: 'Please select a role to conitinue',
      );
      log.v('Dialo Box Successfully Launched');
    }
  }

// Registration Functionality
  Future<bool> registraion(
      {required final String? email,
      required final String? password,
      required final String? username,
      required final String? fathername,
      required final String? mobile,
      required final String? address,
      required final List<String>? roles}) async {
    setBusy(true);
    if (password!.isEmpty ||
        email!.isEmpty ||
        username!.isEmpty ||
        fathername!.isEmpty ||
        address!.isEmpty ||
        roles!.isEmpty ||
        mobile!.isEmpty) {
      await _dialogService.showDialog(
        title: 'Given fields are empty ',
        description: 'Please fill all the fields',
      );
      setBusy(false);
      return true;
    }
    final result = await _mainAuth.registration(
        email: email,
        password: password,
        username: username,
        fathername: fathername,
        mobile: mobile,
        address: address,
        roles: roles);

    setBusy(false);
    if (result is bool) {
      if (result) {
        await _navigationService.navigateTo(Routes.candidate);
        log.v('Candidate Page Successfully Launched');
      } else {
        await _dialogService.showDialog(
            title: 'Login Failure', description: result.toString());
      }
    } else {
      await _dialogService.showDialog(
          title: 'Login Failure', description: 'Wrong Password');
    }
    return result;
  }
}
