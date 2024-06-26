import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/authentication/presentation/new_password.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const ForgotPassword(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    TextFormField(
                      controller: _emailController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        hintText: 'E-Mail Adresse',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Bitte E-Mail-Adresse eingeben';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 40),
                    // Anmelde-Button
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          bool result = await _resetPassword();
                          if (result) {
                            // Beispiel: Navigieren zur nächsten Seite
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewPassword(
                                      databaseRepository:
                                          widget.databaseRepository,
                                      authRepository: widget.authRepository)),
                            );
                          } else {
                            // Fehlerbehandlung
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Fehler beim Zurücksetzen des Passworts'),
                              ),
                            );
                          }
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
                      child: const Text('Passwort zurücksetzen'),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                            databaseRepository: widget.databaseRepository,
                            authRepository: widget.authRepository)),
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
    );
  }

  Future<bool> _resetPassword() async {
    try {
      await widget.authRepository.sendPasswordResetEmail(_emailController.text);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
