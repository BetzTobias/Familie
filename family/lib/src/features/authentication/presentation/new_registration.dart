import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class NewRegistration extends StatelessWidget {
  const NewRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrieren',
            style: TextStyle(decoration: TextDecoration.underline),
            selectionColor: Colors.blue),
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainSelectionPage()),
                  );
                },
                child: const Text('Benutzer erstellen'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
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
