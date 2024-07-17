import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class NewRegistration extends StatefulWidget {
  const NewRegistration({super.key});

  @override
  State<NewRegistration> createState() => _NewRegistrationState();
}

class _NewRegistrationState extends State<NewRegistration> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController usernameController;
  late final TextEditingController phoneController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    usernameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
        title: const Text(
          'Registrieren',
          style: TextStyle(decoration: TextDecoration.underline),
          selectionColor: Color.fromRGBO(158, 245, 255, 1),
        ),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  _buildTextFieldWithIcon(
                    "Benutzername",
                    Icons.person,
                    usernameController,
                    (value) {
                      if (value == null || value.isEmpty) {
                        return 'Bitte Benutzername eingeben';
                      }
                      if (value.length < 6) {
                        return 'Benutzername muss mindestens 6 Zeichen lang sein';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  _buildTextFieldWithIcon(
                    "Telefonnummer",
                    Icons.phone,
                    phoneController,
                    (value) {
                      if (value == null || value.isEmpty) {
                        return 'Bitte Telefonnummer eingeben';
                      }
                      if (!RegExp(r'^\+?[0-9]{7,15}$').hasMatch(value)) {
                        return 'Bitte eine gültige Telefonnummer eingeben';
                      }
                      return null;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildTextFieldWithIcon(
                    "E-Mail Adresse",
                    Icons.email,
                    emailController,
                    (value) {
                      if (value == null || value.isEmpty) {
                        return 'Bitte E-Mail Adresse eingeben';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Bitte eine gültige E-Mail Adresse eingeben';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  _buildTextFieldWithIconAndSuffix(
                    "Passwort",
                    Icons.lock,
                    passwordController,
                    _obscurePassword,
                    () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    (value) {
                      if (value == null || value.isEmpty) {
                        return 'Bitte Passwort eingeben';
                      }
                      if (value.length < 8) {
                        return 'Passwort muss mindestens 8 Zeichen lang sein';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  _buildTextFieldWithIconAndSuffix(
                    "Passwort wiederholen",
                    Icons.lock,
                    confirmPasswordController,
                    _obscureConfirmPassword,
                    () {
                      setState(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      });
                    },
                    (value) {
                      if (value == null || value.isEmpty) {
                        return 'Bitte Passwort wiederholen';
                      }
                      if (value != passwordController.text) {
                        return 'Passwörter stimmen nicht überein';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        try {
                          await context
                              .read<AuthRepository>()
                              .signUpWithEmailAndPassword(emailController.text,
                                  passwordController.text);
                          if (!context.mounted) return;

                          final user =
                              context.read<AuthRepository>().getCurrentUser();

                          await FirebaseFirestore.instance
                              .collection('User')
                              .doc(user!.uid)
                              .set({
                            'username': usernameController.text,
                            'phone': phoneController.text,
                            'email': emailController.text,
                            'password': passwordController.text
                          });
                          if (!context.mounted) return;

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } catch (e) {
                          debugPrint('Fehler bei der Registrierung: $e');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Fehler bei der Registrierung: $e'),
                            ),
                          );
                        }
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          const Color(0XFFEBE216)),
                      foregroundColor: WidgetStateProperty.all<Color>(
                          Colors.black), // Schriftfarbe des Buttons
                    ),
                    child: const Text('Benutzer erstellen'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          const Color(0XFF16972A)),
                      foregroundColor: WidgetStateProperty.all<Color>(
                          Colors.black), // Schriftfarbe des Buttons
                    ),
                    child: const Text('Abbruch'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIcon(
    String labelText,
    IconData iconData,
    TextEditingController controller,
    String? Function(String?)? validator, {
    List<TextInputFormatter>? inputFormatters,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(iconData),
        border: const OutlineInputBorder(),
      ),
      validator: validator,
      inputFormatters: inputFormatters,
    );
  }

  Widget _buildTextFieldWithIconAndSuffix(
    String labelText,
    IconData prefixIconData,
    TextEditingController controller,
    bool obscureText,
    VoidCallback toggleVisibility,
    String? Function(String?)? validator,
  ) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIconData),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: toggleVisibility,
        ),
        border: const OutlineInputBorder(),
      ),
      validator: validator,
    );
  }
}
