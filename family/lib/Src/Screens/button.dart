import 'package:family/Src/Screens/Anmelden/login_seite.dart';
import 'package:family/Src/Screens/logo.dart';
import 'package:family/farben/farben.dart';
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
                  MaterialPageRoute(builder: (context) => const ErsteSeite()),
                );
              },
              //Schriftfarbe und Hintergrundfarbe vom Button
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.Schrift,
                backgroundColor:
                    AppColor.Startbutton, // Schriftfarbe des Buttons
              ),
              child: const Text('Drück mich'),
            ),
          ],
        ),
      ),
    );
  }
}
