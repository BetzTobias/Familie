import 'package:family/src/features/authentication/presentation/forgot_password.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _newPasswordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo im oberen Bereich
                Container(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Image.asset(
                    'assets/Hauptlogo.png', // Pfad zum Logo-Bild
                    width: 600, // Breite des Logos
                    height: 200, // Höhe des Logos
                  ),
                ),

                // Neues Passwort Eingabefeld
                TextFormField(
                  controller: _newPasswordController,
                  decoration: const InputDecoration(
                    hintText: 'Neues Passwort:',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte geben Sie ein neues Passwort ein.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                // Neues Passwort wiederholen Eingabefeld
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Neues Passwort wiederholen:',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte bestätigen Sie das neue Passwort.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                ElevatedButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    updatePassword().then((_){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    }).catchError((error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(error.toString())));
                    });
                  }
                }, child: Text('Bestätigen'),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(const Color(0XFFEBE216)),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                ),
                ),
                
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Zurück-Button-Logik
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()),
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
                  child: const Text('zurück'),
                ),
          ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updatePassword() async {
    // if (!_formKey.currentState!.validate()) {
    //   return; // Abbruch falls Validierung fehlschlägt
    // }

    final newPassword = _newPasswordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (newPassword.isEmpty || confirmPassword.isEmpty) {
      throw Exception(
          'Bitte geben Sie sowohl das neue Passwort als auch die Bestätigung ein.');
    } else if (newPassword != confirmPassword) {
      throw Exception('Neue Passwörter stimmen nicht überein.');
    }
  }
}
