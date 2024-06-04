import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/authentication/presentation/new_password.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  hintText: 'E-Mail Adresse/ Telefonnummer:',
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
                    MaterialPageRoute(builder: (context) => NewPassword()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color(0XFFEBE216),
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(
                    Colors.black, // Schriftfarbe des Buttons
                  ),
                ),
                // Hintergrundfarbe des Button

                child: const Text('Passwort zurücksetzten'),
              ),
              const SizedBox(
                height: 30,
              ),
              // FutureBuilder
              FutureBuilder<bool>(
                future: _resetPassword(), // Asynchrone Methode
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Text('Fehler: ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      return const Text('Passwort wurde zurückgesetzt!');
                    }
                  }
                  return const CircularProgressIndicator();
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },

                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color(0XFF16972A),
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(
                    Colors.black, // Schriftfarbe des Buttons
                  ),
                ),
                // Hintergrundfarbe des Button

                child: const Text('zurück'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _resetPassword() async {
    await Future.delayed(const Duration(seconds: 2)); // Verzögerungs bereich
    return true; // Bei erfolgreichem Zurücksetzten des Passwortes kommt true
  }
}
