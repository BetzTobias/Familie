import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:flutter/material.dart';

class UserCreated extends StatelessWidget {
  const UserCreated({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo im oberen Bereich
              Container(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: Image.asset(
                  'assets/Hauptlogo.png', // Pfad zum Logo-Bild
                  width: 600, // Breite des Logos
                  height: 200, // Höhe des Logos
                ),
              ),
              // Benutzername Eingabefeld
              const Text(
                'Benutzer erfolgreich erstellt',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 40),

              // Anmelde-Button
              ElevatedButton(
                onPressed: () {
                  // Hier ist die Anmelde-Logik
                  // Beispiel: Navigieren zur nächsten Seite
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0XFFEBE216),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black, // Schriftfarbe des Buttons
                  ),
                ),
                // Hintergrundfarbe des Button

                child: const Text('Bestätigen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
