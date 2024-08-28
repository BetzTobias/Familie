import 'package:family/src/common/custom_back_button.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/profil_user/user_profil.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageProfileEmailPage extends StatefulWidget {
  const ManageProfileEmailPage({super.key});

  @override
  State<ManageProfileEmailPage> createState() => _ManageProfileEmailPageState();
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
                onPressed: () {
                  if (_newEmailController.text ==
                      _confirmEmailController.text) {
                    context
                        .read<DatabaseRepository>()
                        .updateUser(_confirmEmailController.text);
                    Navigator.pop(context);
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const MainSelectionPage()),
                    // );
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
              CustomBackButton(
                destination: UserProfileScreen(),
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
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(iconData),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
