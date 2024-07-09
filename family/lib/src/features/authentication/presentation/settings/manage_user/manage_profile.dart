import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_email/manage_profile_email.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_name/manage_profile_user.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_number/manage_profile_number.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_password/manage_profile_password.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class ManageProfilePage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const ManageProfilePage(
      {super.key,
      required this.authRepository,
      required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Benutzername ändern', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManageProfileUserPage(
                          databaseRepository: databaseRepository,
                          authRepository: authRepository,
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Telefonnummer ändern', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManageProfileNumberPage(
                          databaseRepository: databaseRepository,
                          authRepository: authRepository,
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'E-Mail Adresse ändern', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManageProfileEmailPage(
                            databaseRepository: databaseRepository,
                            authRepository: authRepository),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Passwort ändern', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManageProfilePasswordPage(
                            databaseRepository: databaseRepository,
                            authRepository: authRepository),
                      ),
                    );
                  }),
                  
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainSelectionPage(
                        authRepository: authRepository,
                        databaseRepository: databaseRepository,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF16972A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Zurück',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(BuildContext context, String category,
      [VoidCallback? onPressed]) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 239, 138, 138),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
      ),
      child: Text(
        category,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
