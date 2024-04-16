import 'dart:math';
import 'package:flutter/material.dart';
import 'farben/farben.dart';

void main() {
  runApp(Family());
}

// Startseiten hintergrund
class Family extends StatelessWidget {
  const Family({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(background: AppColor.Hintergrund),
      ),
      home: MyHomePage(),
    );
  }
}

//Button aktion
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ErsteSeite()),
                );
              },
              //Schriftfarbe und Hintergrundfarbe vom Button
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.Schrift,
                backgroundColor:
                    AppColor.Startbutton, // Schriftfarbe des Buttons
              ),
              child: Text('Drück mich'),
            ),
          ],
        ),
      ),
    );
  }
}

// Logo von der Startseite
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/assets/Hauptlogo.png', // Pfad zum Logo-Bild
      width: 480, // Breite des Logos
      height: 480, // Höhe des Logos
    );
  }
}

// Der Code für die zweite Seite mit Benutzer und Passwort
class ErsteSeite extends StatelessWidget {
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
                  height: 500, // Höhe des Logos
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
                    MaterialPageRoute(builder: (context) => Hauptseite1()),
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
                            builder: (context) => BenutzerRegistrierungNeu()),
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

// Neue Seite für die Benutzerregistrierung
class BenutzerRegistrierungNeu extends StatelessWidget {
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
            Text('Neuen Benutzer Registrieren'),
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

// Neue Seite für das Zurücksetzen des Passworts
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

// Hintergrundseite für alle Kategorien
class Hauptseite1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.Hintergrund, // Hintergrundfarbe festlegen
        child: Stack(
          children: [
            //Logo für oben RECHTS
            Positioned(
              top: 50,
              left: 201,
              child: Transform.rotate(
                angle: 50 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png',
                    width: 200,
                    height: 210.63,
                  ),
                ),
              ),
            ),
            //Logo für oben LINKS
            Positioned(
              top: 53, // Position von unten
              right: 201, // Position von rechts
              child: Transform.rotate(
                angle: -50 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png', // Pfad zum Bild
                    width: 200, // Breite des Bildes
                    height: 210.63, // Höhe des Bildes
                  ),
                ),
              ),
            ),
            //Logo für mitte RECHTS
            Positioned(
              top: 308, // Position von mitte
              right: 201, // Position von rechts
              child: Transform.rotate(
                angle: -50 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png', // Pfad zum Bild
                    width: 200, // Breite des Bildes
                    height: 240, // Höhe des Bildes
                  ),
                ),
              ),
            ),
            //Logo für mitte LINKS
            Positioned(
              top: 300, // Position von mitte
              left: 201, // Position von links
              child: Transform.rotate(
                angle: 49.32 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png', // Pfad zum Bild
                    width: 200, // Breite des Bildes
                    height: 246.9, // Höhe des Bildes
                  ),
                ),
              ),
            ),
            //Logo für unten RECHTS
            Positioned(
              top: 600, // Position von unten
              left: 201, // Position von rechts
              child: Transform.rotate(
                angle: 50 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png', // Pfad zum Bild
                    width: 200, // Breite des Bildes
                    height: 240, // Höhe des Bildes
                  ),
                ),
              ),
            ),
            //Logo für unten LINKS
            Positioned(
              top: 600, // Position von unten
              right: 201, // Position von links
              child: Transform.rotate(
                angle: -50 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png', // Pfad zum Bild
                    width: 200, // Breite des Bildes
                    height: 246.9, // Höhe des Bildes
                  ),
                ),
              ),
            ),
            //Logo für mitte OBEN
            Positioned(
              top: 170, // Position von unten
              right: 110, // Position von links
              child: Transform.rotate(
                angle: 0 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png', // Pfad zum Bild
                    width: 180, // Breite des Bildes
                    height: 246.9, // Höhe des Bildes
                  ),
                ),
              ),
            ),
            //Logo für mitte UNTEN
            Positioned(
              top: 450, // Position von unten
              right: 100, // Position von rechts
              child: Transform.rotate(
                angle: 0 * (pi / 180),
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    'lib/assets/Hauptlogo.png', // Pfad zum Bild
                    width: 200, // Breite des Bildes
                    height: 246.9, // Höhe des Bildes
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
