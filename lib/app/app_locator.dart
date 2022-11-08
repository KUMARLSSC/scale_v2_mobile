import 'package:scaleindia/Core/main_auth.dart';
import 'package:scaleindia/services/api_service.dart';
import 'package:scaleindia/services/enivronmet_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => EnvironmentService());
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => MainAuthentication());
}
