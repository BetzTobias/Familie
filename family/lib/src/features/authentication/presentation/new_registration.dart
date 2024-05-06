import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/authentication/presentation/user_created.dart';
import 'package:flutter/material.dart';

class NewRegistration extends StatelessWidget {
  const NewRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
        title: const Text('Registrieren',
            style: TextStyle(decoration: TextDecoration.underline),
            selectionColor: Color.fromRGBO(158, 245, 255, 1)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/Hauptlogo.png', // Logo Pfad
              height: 250,
              width: 100, // Höhe des Logos
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              _buildTextFieldWithIcon("Benutzername", Icons.person),
              const SizedBox(height: 20),
              _buildTextFieldWithIcon("Telefonnummer", Icons.phone),
              const SizedBox(height: 20),
              _buildTextFieldWithIcon("E-Mail Adresse", Icons.email),
              const SizedBox(height: 20),
              _buildTextFieldWithIconAndSuffix(
                "Passwort",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
              ),
              const SizedBox(height: 20),
              _buildTextFieldWithIconAndSuffix(
                "Passwort wiederholen",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
              ),
              //Aktion zur nächsten Seite
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserCreated()),
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
                child: const Text('Benutzer erstellen'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0XFF16972A),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black, // Schriftfarbe des Buttons
                  ),
                ),
                child: const Text('Abbruch'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIcon(String labelText, IconData iconData) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(iconData),
        border: const OutlineInputBorder(),
      ),
    );
  }

  Widget _buildTextFieldWithIconAndSuffix(
      String labelText, IconData prefixIconData, IconData suffixIconData,
      {required bool obscureText}) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIconData),
        suffixIcon: Icon(suffixIconData),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
