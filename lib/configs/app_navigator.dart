
import 'package:flutter/material.dart';
import 'package:mobile_test/configs/auto_router/app_router.dart';

class AppNavigator {
  static String? currentRoute;
  static AppRouter rootRouter = AppRouter();
  static final AppNavigator _instance = AppNavigator();

  static AppNavigator get instance => _instance;

  static NavigatorState? get state => rootRouter.navigatorKey.currentState;
  static GlobalKey<NavigatorState> navigatorKey = rootRouter.navigatorKey;
}
