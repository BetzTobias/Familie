import 'package:family/src/common/menue_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:family/src/features/content/presentation/entertainment/bake/recipe_list.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class EntertainmentPage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const EntertainmentPage(
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
                  const SizedBox(height: 50),
                  buildMenuButton(context, 'Basteln', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainSelectionPage(
                          authRepository: authRepository,
                          databaseRepository: databaseRepository,
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Backen', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeList(
                          authRepository: authRepository,
                          databaseRepository: databaseRepository,
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Lieder', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllSongsPage(
                          authRepository: authRepository,
                          databaseRepository: databaseRepository,
                        ),
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
          Positioned(
            top: 100,
            left: 20,
            child: MenuButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuPage(
                            authRepository: authRepository,
                            databaseRepository: databaseRepository,
                          )),
                );
              },
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
