import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class ManageProfile extends StatelessWidget {
  const ManageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
        title: const Text('Profil verwalten',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Alter Benutzername", Icons.person),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Neuer Benutzername", Icons.person),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Alte Telefonnummer", Icons.phone),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Neue Telefonnummer", Icons.phone),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Alte E-Mail Adresse", Icons.email),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Neue E-Mail Adresse", Icons.email),
              const SizedBox(height: 10),
              _buildTextFieldWithIconAndSuffix(
                "Altes Passwort",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              _buildTextFieldWithIconAndSuffix(
                "Neues Passwort",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              _buildTextFieldWithIconAndSuffix(
                "Neues Passwort wiederholen",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
              ),
              //Aktion zur nächsten Seite
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
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
                child: const Text('Profil speichern'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuPage()),
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
                child: const Text('Zurück'),
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