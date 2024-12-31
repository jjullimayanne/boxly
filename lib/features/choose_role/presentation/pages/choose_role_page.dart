import 'package:flutter/material.dart';

class ChooseRolePage extends StatelessWidget {
  const ChooseRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha seu Papel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Lógica para escolher como assinante
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Você escolheu: Assinante')),
                );
              },
              child: const Text('Sou um Assinante'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para escolher como clube
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Você escolheu: Clube')),
                );
              },
              child: const Text('Sou um Clube'),
            ),
          ],
        ),
      ),
    );
  }
}
