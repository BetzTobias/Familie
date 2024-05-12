import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class ManageProfileUserPage extends StatelessWidget {
  const ManageProfileUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Center(
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
                    MaterialPageRoute(
                        builder: (context) => const ManageProfilePage()),
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
