import 'package:family/src/features/authentication/presentation/forgot_password.dart';
import 'package:family/src/features/authentication/presentation/new_registration.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
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
                  'assets/Logo_2.png', // Pfad zum Logo-Bild
                  width: 600, // Breite des Logos
                  height: 200, // Höhe des Logos
                ),
              ),
              // Benutzername Eingabefeld
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Benutzername:',
                ),
              ),
              const SizedBox(height: 40),
              // Passwort Eingabefeld
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Passwort:',
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
                    MaterialPageRoute(
                        builder: (context) => const MainSelectionPage()),
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

                child: const Text('Anmelden'),
              ),
              const SizedBox(height: 20),
              // Passwort vergessen und Neuen Account erstellen Aktionen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Aktion für Passwort vergessen
                      // Hier navigieren Sie zur Seite, um das Passwort zurückzusetzen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: const Text('Passwort vergessen?'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Aktion für Neuen Account erstellen
                      // Hier navigieren Sie zur Seite zur Benutzerregistrierung
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewRegistration()),
                      );
                    },
                    child: const Text('Neuer Account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
