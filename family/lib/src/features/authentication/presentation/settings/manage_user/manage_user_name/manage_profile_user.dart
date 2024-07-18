import 'package:family/src/common/custom_back_button.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageProfileUserPage extends StatefulWidget {
  const ManageProfileUserPage({super.key});

  @override
  State<ManageProfileUserPage> createState() => _ManageProfileUserPageState();
}

class _ManageProfileUserPageState extends State<ManageProfileUserPage> {
  final TextEditingController _oldUserController = TextEditingController();
  final TextEditingController _newUserController = TextEditingController();
  final TextEditingController _confirmUserController = TextEditingController();
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
                  "Alter Benutzername", Icons.person, _oldUserController),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon(
                  "Neuer Benutzername", Icons.person, _newUserController),
              const SizedBox(height: 10),
              _buildTextFieldWithIcon("Neuer Benutzername wiederholen",
                  Icons.person, _confirmUserController),
              //Aktion zur nächsten Seite
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_newUserController.text == _confirmUserController.text) {
                    context
                        .read<DatabaseRepository>()
                        .updateUser1(_confirmUserController.text);
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Benutzername stimmt nicht überein')));
                  }

                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const MainSelectionPage()),
                  // );
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
}
