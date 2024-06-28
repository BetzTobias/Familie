import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final AuthRepository authRepository;
  const SettingsPage({super.key, required this.authRepository});

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
                    const SizedBox(height: 50),
                    buildCategoryButton(
                      context,
                      'Profil verwalten',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ManageProfilePage(
                                  authRepository: authRepository)),
                        );
                      },
                    ),
                    const SizedBox(
                        height:
                            10), // Abstand zwischen dem Profil verwalten und der Hygiene
                    buildCategoryButton(
                      context,
                      'Abmelden',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainSelectionPage(
                                  authRepository: authRepository)),
                        );
                      },
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCategoryButton(
      BuildContext context, String category, VoidCallback? onPressed) {
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
