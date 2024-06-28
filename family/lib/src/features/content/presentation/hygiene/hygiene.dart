import 'package:family/src/common/menue_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/brush_teeth/brush_teeth_page.dart';
import 'package:family/src/features/content/presentation/hygiene/toilet_training/toilet_training_page.dart';
import 'package:family/src/features/content/presentation/hygiene/wash/wash_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class HygienePage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const HygienePage(
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
                  buildMenuButton(context, 'Zähne putzen', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrushTeethPage(
                          databaseRepository: databaseRepository,
                          authRepository: authRepository,
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Toilettengang', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ToiletTrainingPage(databaseRepository: databaseRepository,
                          authRepository: authRepository,
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Waschen', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WashPage(databaseRepository: databaseRepository,
                          authRepository: authRepository,
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
                        databaseRepository: databaseRepository,
                        authRepository: authRepository,
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
                            databaseRepository: databaseRepository,
                            authRepository: authRepository,
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
