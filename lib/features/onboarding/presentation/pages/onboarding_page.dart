import 'package:boxly/core/constants/routes_constants.dart';
import 'package:boxly/features/onboarding/domain/usecases/onboarding_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  final CompleteOnboardingUseCase _completeOnboardingUseCase =
      Get.find<CompleteOnboardingUseCase>();

  int _currentPage = 0;

  // Função chamada quando o usuário escolhe "Não ver novamente"
  void _markAsDoNotShowAgain() async {
    await _completeOnboardingUseCase
        .call(); // Chama o Use Case para salvar e navegar
    _navigateToNext();
  }

  void _navigateToNext() {
    Get.offNamed(RouteConstants.splash);
  }

  @override
  Widget build(BuildContext context) {
    final onboardingItems = [
      'Bem-vindo ao App!',
      'Veja como funciona...',
      'Aproveite nossos recursos!',
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          // Exibe o botão "Não ver novamente" na última página
          if (_currentPage == onboardingItems.length - 1)
            TextButton(
              onPressed: _markAsDoNotShowAgain,
              child: const Text("Não ver novamente"),
            ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingItems.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    onboardingItems[index],
                    style: const TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  if (_currentPage > 0) {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Text("Voltar"),
              ),
              TextButton(
                onPressed: () {
                  if (_currentPage < onboardingItems.length - 1) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    _markAsDoNotShowAgain(); // Salva a escolha e navega
                  }
                },
                child: Text(
                  _currentPage == onboardingItems.length - 1
                      ? "Finalizar"
                      : "Avançar",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
