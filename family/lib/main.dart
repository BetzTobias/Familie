import 'dart:math';
import 'package:flutter/material.dart';
import 'farben/farben.dart';

void main() {
  runApp(MyApp());
}

// Startseiten hintergrund
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                    MaterialPageRoute(builder: (context) => NextPage1()),
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
                            builder: (context) => ForgotPasswordPage()),
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
                            builder: (context) => RegistrationPage()),
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
class AppColor {
  static const Schrift = Colors.black;
  static const Startbutton = Colors.blue;
  static const Hintergrund = Colors.white;
}

class Family extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme:
            ThemeData.light().colorScheme.copyWith(primary: Colors.red),
      ),
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/Hauptlogo.png',
              height: 100,
            ),
            Text('Neuen Benutzer registrieren'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Zurück'),
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.Schrift,
                backgroundColor: AppColor.Startbutton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswortFeld extends StatelessWidget {
  final String hintText;
  final String? errorMessage;
  final TextEditingController controller;
  final String passwordConstraint;
  final PasswordDecoration passwordDecoration;
  final PasswordBorder border;
  final Function(String) onChanged;

  const PasswortFeld({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.passwordConstraint,
    required this.passwordDecoration,
    required this.border,
    required this.onChanged,
    this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        errorText: errorMessage,
        border: border.border,
        focusedBorder: border.focusedBorder,
        focusedErrorBorder: border.focusedErrorBorder,
      ),
    );
  }
}

class PasswordDecoration {
  final EdgeInsetsGeometry? inputPadding;
  final Widget? suffixIcon;
  final TextStyle? inputStyle;

  const PasswordDecoration({
    this.inputPadding,
    this.suffixIcon,
    this.inputStyle,
  });
}

class PasswordBorder {
  final OutlineInputBorder border;
  final OutlineInputBorder focusedBorder;
  final OutlineInputBorder focusedErrorBorder;

  const PasswordBorder({
    required this.border,
    required this.focusedBorder,
    required this.focusedErrorBorder,
  });
}

class Passwort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: PasswortFeld(
                hintText: 'Passwort',
                controller: TextEditingController(text: 'passwort'),
                errorMessage:
                    'Erforderlich sind mindestens 1 Buchstabe und eine Zahl mit mehr als 5 Zeichen',
                passwordConstraint: r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}$',
                passwordDecoration: PasswordDecoration(
                  inputPadding: const EdgeInsets.symmetric(horizontal: 10),
                  suffixIcon: const Icon(
                    Icons.not_accessible,
                    color: Colors.grey,
                  ),
                  inputStyle: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                onChanged: (x) {
                  print(x);
                },
                border: PasswordBorder(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(width: 2, color: Colors.red.shade200),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PasswortFeld(
                hintText: 'Passwort',
                passwordConstraint: r'.*[@$#.*].*',
                passwordDecoration: PasswordDecoration(),
                border: PasswordBorder(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade100,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade100,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(width: 2, color: Colors.red.shade200),
                  ),
                ),
                errorMessage: 'muss auch Sonderzeichen enthalten. * @ # \$',
                controller: TextEditingController(),
                onChanged: (x) {
                  print(x);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PasswortFeld(
                hintText: 'Standard-Passwortbeschränkung ',
                passwordDecoration: PasswordDecoration(
                  inputPadding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                border: PasswordBorder(
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(25.7)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  focusedErrorBorder: null,
                ),
                controller: TextEditingController(),
                onChanged: (x) {
                  print(x);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Neue Seite für das Zurücksetzen des Passworts
class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/Hauptlogo.png', // Passe den Pfad zu deinem Logo an
              height: 100, // Höhe des Logos
            ),
            Text('Passwort zurücksetzen'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Zurück zur vorherigen Seite
                Navigator.pop(context);
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
class NextPage1 extends StatelessWidget {
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
