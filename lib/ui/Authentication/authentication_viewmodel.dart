import 'dart:io';

import 'package:scaleindia/Core/main_auth.dart';
import 'package:scaleindia/app/app_locator.dart';
import 'package:scaleindia/app/app_logger.dart';
import 'package:scaleindia/app/app_router.dart';
import 'package:scaleindia/services/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter/cupertino.dart';

class AuthenticationViewModel extends BaseViewModel {
  String email1 = 'Candidate';
  String email2 = 'Employer';
  String email3 = 'Trainer';
  String email4 = 'Trainingpartner';
  String email5 = 'Ssdm';
  String email6 = 'Assessor';
  final log = getLogger('AuthenticationViewModel');
  String password1 = 'Candidate';
  String password2 = 'Employer';
  String password3 = 'Trainer';
  String password4 = 'Trainingpartner';
  String password5 = 'Ssdm';
  String password6 = 'Assessor';
  final _mainAuth = locator<MainAuthentication>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<ApiService>();
  Future<bool> login({
    @required String? email,
    @required String? password,
  }) async {
    setBusy(true);
    if (password!.isEmpty) {
      await _dialogService.showDialog(
        title: 'Given field is empty ',
        description: 'Please enter your Password to Continue',
      );
      setBusy(false);
      return true;
    }
    final result = await _mainAuth.login(email: email!, password: password);

    setBusy(false);
    if (result is bool) {
      if (result) {
        if (_apiService.loadRole == '[CANDIDATE]') {
          await _navigationService.navigateTo(Routes.candidate);
          log.v('Candidate Page Successfully Launched');
        }
        if (_apiService.loadRole == '[TRAINER]') {
          await _navigationService.navigateTo(Routes.trainer);
          log.v('Trainer Page Successfully Launched');
        }
        if (_apiService.loadRole == '[ASSESSOR]') {
          await _navigationService.navigateTo(Routes.assessor);
          log.v('Assessor Page Successfully Launched');
        }
        if (_apiService.loadRole == '[TRAININGPARTNER]') {
          await _navigationService.navigateTo(Routes.trainingPartner);
          log.v('TrainingPartner Page Successfully Launched');
        }
        if (_apiService.loadRole == '[EMPLOYER]') {
          await _navigationService.navigateTo(Routes.employer);
          log.v('Employer Page Successfully Launched');
        }
        if (_apiService.loadRole == '[SSDM]') {
          await _navigationService.navigateTo(Routes.ssdm);
          log.v('SSDM Page Successfully Launched');
        }
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

  Future<bool> findEmail({
    @required String? email,
  }) async {
    setBusy(true);
    if (email!.isEmpty) {
      await _dialogService.showDialog(
        title: 'Given field is empty ',
        description: 'Please enter your Email to Continue',
      );
      setBusy(false);
      return true;
    }
    final result = await _mainAuth.findEmail(email: email);
    setBusy(false);

    if (result is bool) {
      if (result) {
        await _navigationService.navigateTo(Routes.password);
        log.v('Password Page Successfully Launched');
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

//Email Exist Functionality. This Function will Find the user is Present or Not
  //Registration functionality.This function navigate to User Role Selecting Page
  void navigateToUserRoleSelecting() {
    _navigationService.navigateTo(Routes.userRoleSelecting);
    log.v('UserRoleSelcting Page Successfully Launched');
  }

  Future<bool> close() async {
    return exit(0);
  }

  void navigateTocandidate() {
    _navigationService.navigateTo(Routes.password);
    log.v('UserRoleSelcting Page Successfully Launched');
  }
}
