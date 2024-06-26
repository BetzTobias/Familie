import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/forgot_password.dart';
import 'package:family/src/features/authentication/presentation/new_registration.dart';
import 'package:family/src/features/welcome/presentation/patient.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const LoginPage(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscurePassword = false;
  final _formKey = GlobalKey<FormState>();

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
                  'assets/Logo_2.png', // Pfad zum Logo-Bild
                  width: 600, // Breite des Logos
                  height: 200, // Höhe des Logos
                ),
              ),

              // Email Eingabefeld
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        label: Text('Email'),
                        hintText: 'Email adressse bitte eingeben',
                      ),
                      validator: (value) {
                        if (value == null || value.length < 6) {
                          return 'Email adresse ist falsch';
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
                        label: const Text('Passwort'),
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
                    FutureBuilder<void>(
                      future: login(
                        username: emailController.text, // email vom Controller
                        password:
                            passwordController.text, // Password vom Controller
                      ),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator(); // Loading indicator
                        } else if (snapshot.hasError) {
                          return Text(
                              'Fehler: ${snapshot.error}'); // Error message
                        } else {
                          return ElevatedButton(
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                await widget.authRepository
                                    .loginWithEmailAndPassword(
                                        emailController.text,
                                        passwordController.text);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PatientPage(
                                            authRepository:
                                                widget.authRepository,
                                            databaseRepository:
                                                widget.databaseRepository,
                                          )),
                                );
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
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),

              // Anmelde-Button with FutureBuilder

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
                            builder: (context) => ForgotPassword(
                                databaseRepository: widget.databaseRepository,
                                authRepository: widget.authRepository)),
                      );
                    },
                    child: const Text('Passwort vergessen?'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewRegistration(
                                databaseRepository: widget.databaseRepository,
                                authRepository: widget.authRepository)),
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
    );
  }

  Future<void> login(
      {required String username, required String password}) async {
    //TODO: Hier die Logik zum Anmelden hinzufügen
    print('Login war erfolgreich!');
  }
}
