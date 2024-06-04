import 'package:family/src/features/authentication/presentation/forgot_password.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  NewPassword({super.key});

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
                  hintText: 'Neues Passwort:',
                ),
              ),
              const SizedBox(height: 40),
              // Passwort Eingabefeld
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Neues Passwort wiederholen:',
                ),
              ),
              const SizedBox(height: 40),

              // Anmelde-Button
              FutureBuilder<void>(
                future: updatePassword(), // Soll Daten abrufen
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(); // Ladeanzeige
                  } else if (snapshot.hasError) {
                    return Text('Fehler: ${snapshot.error}'); // Fehlermeldung
                  } else {
                    return ElevatedButton(
                      onPressed: () {
                        // Navigieren zur nächsten Seite
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
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
                      child: const Text('Bestätigen'),
                    );
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Zurück-Button-Logik
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword()),
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

  Future<void> updatePassword() async {
    final newPassword =
        newPasswordFormField.text; 
    final confirmPassword =
        confirmPasswordFormField.text; 

    if (newPassword.isEmpty || confirmPassword.isEmpty) {
      throw Exception('Bitte geben Sie sowohl das neue Passwort als auch die Bestätigung ein.');
    } else if (newPassword != confirmPassword) {
      throw Exception('Neue Passwörter stimmen nicht überein.');
    }

    final Map<String, dynamic> data = {
      'newPassword': newPassword,
    };
  }
}
