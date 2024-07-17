import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/forgot_password.dart';
import 'package:family/src/features/authentication/presentation/new_registration.dart';
import 'package:family/src/features/welcome/presentation/patient.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Email Eingabefeld
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Logo im oberen Bereich
                      Container(
                        padding: const EdgeInsets.only(bottom: 100.0),
                        child: Image.asset(
                          'assets/Logo_2.png', // Pfad zum Logo-Bild
                          width: 600, // Breite des Logos
                          height: 200, // Höhe des Logos
                        ),
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email Adresse bitte eingeben',
                        ),
                        validator: (value) {
                          if (value == null || value.length < 6) {
                            return 'Email Adresse ist falsch';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      // Passwort Eingabefeld
                      TextFormField(
                        controller: passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          labelText: 'Passwort',
                          hintText: 'Passwort ist falsch',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 11) {
                            return 'Passwort ist zu klein';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              if (!context.mounted) return;
                              await context
                                  .read<AuthRepository>()
                                  .loginWithEmailAndPassword(
                                    emailController.text,
                                    passwordController.text,
                                  );
                              if (!context.mounted) return;
                              await context
                                  .read<DatabaseRepository>()
                                  .setEmail(emailController.text);
                              if (!context.mounted) return;
                              await context
                                  .read<DatabaseRepository>()
                                  .setPassword(passwordController.text);
                              if (!context.mounted) return;

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PatientPage(),
                                ),
                              );
                            } catch (e) {
                              if (!context.mounted) return;
                              showErrorSnackbar(context, e.toString());
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
                        child: const Text('Anmelden'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                // Passwort vergessen und Neuen Account erstellen Aktionen
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ),
                        );
                      },
                      child: const Text('Passwort vergessen?'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewRegistration(),
                          ),
                        );
                      },
                      child: const Text('Neuer Account'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Fehler: $message'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
