import 'package:family/Src/Farben/farben.dart';
import 'package:family/Src/Screens/Anmelden/neu_registrierung.dart';
import 'package:family/Src/Screens/Anmelden/passwort_vergessen.dart';
import 'package:flutter/material.dart';

class ErsteSeite extends StatelessWidget {
  const ErsteSeite({super.key});
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
                padding: EdgeInsets.only(bottom: 20.0),
                child: Image.asset(
                  'lib/assets/Logo_2.png', // Pfad zum Logo-Bild
                  width: 500, // Breite des Logos
                  height: 100, // Höhe des Logos
                ),
              ),
              // Benutzername Eingabefeld
              TextField(
                decoration: InputDecoration(
                  hintText: 'Benutzername:',
                ),
              ),
              SizedBox(height: 40),
              // Passwort Eingabefeld
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Passwort:',
                ),
              ),
              SizedBox(height: 40),
              // Anmelde-Button
              ElevatedButton(
                onPressed: () {
                  // Hier ist die Anmelde-Logik
                  // Beispiel: Navigieren zur nächsten Seite
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NeuRegistrierung()),
                  );
                },
                child: Text('Anmelden'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColor.Schrift, // Schriftfarbe des Button
                  backgroundColor:
                      AppColor.Startbutton, // Hintergrundfarbe des Button
                ),
              ),
              SizedBox(height: 20),
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
                            builder: (context) => PasswortVergessen()),
                      );
                    },
                    child: Text('Passwort vergessen?'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Aktion für Neu registrieren
                      // Hier navigieren Sie zur Seite zur Benutzerregistrierung
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NeuRegistrierung()),
                      );
                    },
                    child: Text('Neu registrieren'),
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
