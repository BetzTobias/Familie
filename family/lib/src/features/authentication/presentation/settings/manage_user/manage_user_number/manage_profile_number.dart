import 'package:family/src/common/custom_back_button.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageProfileNumberPage extends StatefulWidget {
  const ManageProfileNumberPage({super.key});

  @override
  State<ManageProfileNumberPage> createState() =>
      _ManageProfileNumberPageState();
}

class _ManageProfileNumberPageState extends State<ManageProfileNumberPage> {
  final TextEditingController _oldNumberController = TextEditingController();
  final TextEditingController _newNumberController = TextEditingController();
  final TextEditingController _confirmNumberController =
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
              buildTextFieldWithIcon(
                  "Alte Telefonnummer", Icons.phone, _oldNumberController),
              const SizedBox(height: 10),
              buildTextFieldWithIcon(
                  "Neue Telefonnummer", Icons.phone, _newNumberController),
              const SizedBox(height: 10),
              buildTextFieldWithIcon("Neue Telefonnummer wiederholen",
                  Icons.phone, _confirmNumberController),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_newNumberController.text ==
                      _confirmNumberController.text) {
                    context
                        .read<DatabaseRepository>()
                        .updateUser3(_confirmNumberController.text);
                    Navigator.pop(context);
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const MainSelectionPage()),
                    // );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Telefonnummer stimmt nicht überein')));
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

  Widget buildTextFieldWithIcon(
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
