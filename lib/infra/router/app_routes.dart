import 'package:boxly/features/onboarding/routes/onboarding_route.dart';
import 'package:boxly/features/splash/routes/splash_route.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    ...SplashRoutes.routes,
    ...OnboardingRoutes.routes,
  ];
}
