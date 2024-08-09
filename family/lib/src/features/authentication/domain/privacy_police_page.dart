import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
        title: const Text('Datenschutzerklären'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '', // Pfad zu Datenschutzerklärung Bild
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              const Text(
                ' AGBs .',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
