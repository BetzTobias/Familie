import 'package:family/src/common/custom_back_button.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageProfilePasswordPage extends StatefulWidget {
  const ManageProfilePasswordPage({super.key});

  @override
  State<ManageProfilePasswordPage> createState() =>
      _ManageProfilePasswordPageState();
}

class _ManageProfilePasswordPageState extends State<ManageProfilePasswordPage> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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

              _buildTextFieldWithIconAndSuffix(
                "Altes Passwort",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
                _oldPasswordController,
              ),
              const SizedBox(height: 10),
              _buildTextFieldWithIconAndSuffix(
                "Neues Passwort",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
                _newPasswordController,
              ),
              const SizedBox(height: 10),
              _buildTextFieldWithIconAndSuffix(
                "Neues Passwort wiederholen",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
                _confirmPasswordController,
              ),
              //Aktion zur nächsten Seite
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_newPasswordController.text ==
                      _confirmPasswordController.text) {
                    context
                        .read<DatabaseRepository>()
                        .updateUser2(_confirmPasswordController.text);
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Benutzername stimmt nicht überein')));
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
              const CustomBackButton(destination: ManageProfilePage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIconAndSuffix(
      String labelText,
      IconData prefixIconData,
      IconData suffixIconData,
      TextEditingController controller,
      {required bool obscureText}) {
    return TextField(
      controller: controller,
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
