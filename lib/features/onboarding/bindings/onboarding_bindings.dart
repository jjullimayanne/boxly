import 'package:boxly/features/onboarding/data/local/onboarding_local_data_source.dart';
import 'package:boxly/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:boxly/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:boxly/features/onboarding/domain/usecases/onboarding_usecase.dart';
import 'package:get/get.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LocalStorageDataSource(),
        permanent: true); // permanent: true mantém a dependência na memória
    Get.put<OnboardingRepository>(OnboardingRepositoryImpl(Get.find()),
        permanent: true);
    Get.put(CompleteOnboardingUseCase(Get.find<OnboardingRepository>()),
        permanent: true);
  }
}
