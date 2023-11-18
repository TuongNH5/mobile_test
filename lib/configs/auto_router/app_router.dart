import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_test/presentation/screen/joke_screen/joke_screen.dart';
part 'app_router.gr.dart';
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  // TODO: implement routes
  List<AutoRoute> get routes => [
        AutoRoute(page: JokeRoute.page,path:  AppRouterPath.joke,initial: true),
      ];
}

class AppRouterPath {
    static const joke = '/joke';

}
