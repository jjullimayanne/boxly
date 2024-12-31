import 'package:boxly/core/constants/routes_constants.dart';
import 'package:boxly/features/splash/bindings/splash_bindings.dart';
import 'package:boxly/features/splash/presentation/pages/splash_page.dart';
import 'package:get/get.dart';

class SplashRoutes {
  static final routes = [
    GetPage(
      name: RouteConstants.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
