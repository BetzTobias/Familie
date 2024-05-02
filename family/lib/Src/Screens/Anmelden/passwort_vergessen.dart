import 'package:family/Src/Farben/farben.dart';
import 'package:flutter/material.dart';

class PasswortVergessen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/Hauptlogo.png', // Logo Pfad
              height: 100, // Höhe des Logos
            ),
            Text('Passwort zurücksetzen'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Zurück zur vorherigen Seite
              },
              child: Text('Zurück'),
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.Schrift, // Schriftfarbe des Button
                backgroundColor:
                    AppColor.Startbutton, // Hintergrundfarbe des Button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
