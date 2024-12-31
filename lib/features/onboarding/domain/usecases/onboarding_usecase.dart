import 'package:boxly/features/onboarding/domain/repositories/onboarding_repository.dart';

class CompleteOnboardingUseCase {
  final OnboardingRepository repository;

  CompleteOnboardingUseCase(this.repository);

  Future<void> call() async {
    await repository.completeOnboarding();

    await repository.markAsDoNotShowAgain();
  }
}
