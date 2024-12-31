import 'package:boxly/core/constants/routes_constants.dart';
import 'package:boxly/features/onboarding/bindings/onboarding_bindings.dart';
import 'package:boxly/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:get/get.dart';

class OnboardingRoutes {
  static final routes = [
    GetPage(
      name: RouteConstants.onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
  ];
}
