import 'package:family/src/features/authentication/presentation/neu_registrierung.dart';
import 'package:family/src/features/authentication/presentation/passwort_vergessen.dart';
import 'package:flutter/material.dart';

class LoginSeite extends StatelessWidget {
  const LoginSeite({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo im oberen Bereich
              Container(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Image.asset(
                  'lib/assets/Logo_2.png', // Pfad zum Logo-Bild
                  width: 500, // Breite des Logos
                  height: 100, // Höhe des Logos
                ),
              ),
              // Benutzername Eingabefeld
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Benutzername:',
                ),
              ),
              const SizedBox(height: 40),
              // Passwort Eingabefeld
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Passwort:',
                ),
              ),
              const SizedBox(height: 40),
              // Anmelde-Button
              ElevatedButton(
                onPressed: () {
                  // Hier ist die Anmelde-Logik
                  // Beispiel: Navigieren zur nächsten Seite
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NeuRegistrierung()),
                  );
                },

                // Hintergrundfarbe des Button

                child: const Text('Anmelden'),
              ),
              const SizedBox(height: 20),
              // Passwort vergessen und Neu registrieren Aktionen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Aktion für Passwort vergessen
                      // Hier navigieren Sie zur Seite, um das Passwort zurückzusetzen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswortVergessen()),
                      );
                    },
                    child: const Text('Passwort vergessen?'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Aktion für Neu registrieren
                      // Hier navigieren Sie zur Seite zur Benutzerregistrierung
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NeuRegistrierung()),
                      );
                    },
                    child: const Text('Neu registrieren'),
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
