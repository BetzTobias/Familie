import 'package:family/src/common/logo.dart';
import 'package:family/src/features/authentication/presentation/login_seite.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginSeite()),
                );
              },
              //Schriftfarbe und Hintergrundfarbe vom Button

              child: const Text('Drück mich'),
            ),
          ],
        ),
      ),
    );
  }
}
