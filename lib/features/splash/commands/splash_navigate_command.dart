import 'package:boxly/core/constants/routes_constants.dart';
import 'package:get/get.dart';

class SplashNavigateCommand {
  Future<void> execute() async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      Get.offNamed(RouteConstants.onboarding);
    } catch (e) {}
  }
}
