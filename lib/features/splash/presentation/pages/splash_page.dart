import 'package:boxly/core/deisgn_system/widgets/loadings/loading_indicator.dart';
import 'package:boxly/features/splash/commands/splash_navigate_command.dart';
import 'package:flutter/material.dart';

import '../widgets/splash_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _executeNavigation();
  }

  Future<void> _executeNavigation() async {
    final SplashNavigateCommand navigateCommand = SplashNavigateCommand();
    await navigateCommand.execute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background, // Usando colorScheme.background para consistência
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashLogo(),
            SizedBox(height: 20),
            LoadingIndicator(),
          ],
        ),
      ),
    );
  }
}
