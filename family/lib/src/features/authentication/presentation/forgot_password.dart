import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Hauptlogo.png', // Logo Pfad
              height: 100, // Höhe des Logos
            ),
            const Text('Passwort zurücksetzen'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Zurück zur vorherigen Seite
              },
              child: const Text('Zurück'),
            ),
          ],
        ),
      ),
    );
  }
}
