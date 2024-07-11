import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageProfileEmailPage extends StatefulWidget {
  const ManageProfileEmailPage({super.key});

  @override
  _ManageProfileEmailPageState createState() => _ManageProfileEmailPageState();
}

class _ManageProfileEmailPageState extends State<ManageProfileEmailPage> {
  final TextEditingController _oldEmailController = TextEditingController();
  final TextEditingController _newEmailController = TextEditingController();
  final TextEditingController _confirmEmailController = TextEditingController();

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
              _buildTextFieldWithIcon(
                  "Alte E-Mail Adresse", Icons.email, _oldEmailController),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon(
                  "Neue E-Mail Adresse", Icons.email, _newEmailController),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Neue E-Mail Adresse wiederholen",
                  Icons.email, _confirmEmailController),
              const SizedBox(height: 10),

              //Aktion zur nächsten Seite
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  if (_newEmailController.text ==
                      _confirmEmailController.text) {
                    await context
                        .read<DatabaseRepository>()
                        .updateUser(_newEmailController.text);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainSelectionPage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Email Adresse stimmt nicht überein')));
                  }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color(0XFFEBE216),
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(
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
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color(0XFF16972A),
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(
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

  Widget _buildTextFieldWithIcon(
      String labelText, IconData iconData, TextEditingController controller) {
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
