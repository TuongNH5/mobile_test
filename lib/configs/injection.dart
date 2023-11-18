
import 'package:get_it/get_it.dart';
import 'package:mobile_test/configs/app_navigator.dart';
import 'app_config.dart';

final injector = GetIt.instance;
Future<void> initializeDependencies() async {
  injector.registerSingleton<AppConfig>(await AppConfig.production());
  injector.registerSingleton<AppNavigator>(AppNavigator.instance);

}
