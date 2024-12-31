import 'package:boxly/core/local_storage/local_storage_service.dart';
import 'package:boxly/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final LocalStorageService _localStorageService;

  OnboardingRepositoryImpl(this._localStorageService);

  @override
  Future<void> completeOnboarding() async {
    // Lógica para marcar o onboarding como completo, caso necessário
    // Por exemplo, você pode salvar um valor para indicar que o onboarding foi feito
    await _localStorageService
        .saveShowOnboarding(false); 
  }

  @override
  Future<void> markAsDoNotShowAgain() async {
    // Lógica para salvar a escolha de "não ver novamente"
    await _localStorageService.saveShowOnboarding(false);
  }
}
