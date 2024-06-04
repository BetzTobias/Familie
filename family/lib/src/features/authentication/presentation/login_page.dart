import 'package:family/src/features/authentication/presentation/forgot_password.dart';
import 'package:family/src/features/authentication/presentation/new_registration.dart';
import 'package:family/src/features/welcome/presentation/patient.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

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
              // Benutzername Eingabefeld
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  hintText: 'Benutzername:',
                ),
              ),
              const SizedBox(height: 40),
              // Passwort Eingabefeld
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Passwort:',
                ),
              ),
              const SizedBox(height: 40),
              // Anmelde-Button with FutureBuilder
              FutureBuilder<void>(
                future: login(
                  username:
                      usernameController.text, // userName vom Controller
                  password:
                      passwordController.text, // Password vom Controller
                ),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(); // Loading indicator
                  } else if (snapshot.hasError) {
                    return Text('Fehler: ${snapshot.error}'); // Error message
                  } else {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PatientPage()),
                        );
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
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: const Text('Passwort vergessen?'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewRegistration()),
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
    
   

    print('Login war erfolgreich!'); 
  }
}
