import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class PatientPage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const PatientPage({super.key, required this.authRepository, required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
        child: Center(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Seid Geduldig jedes Kind entwickelt sich unterschiedlich. Sei geduldig und ermutige das Kind, auch wenn es manche Dinge nicht sofort kann. Positive Verstärkung und Lob sind wichtig, um das Selbstvertrauen zu stärken.',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 100),
          // Zurück- und Vorwärts-Buttons
          Column(
            children: [
              Positioned(
                top: 610,
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
                      backgroundColor: const Color(0XFFEBE216),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Weiter',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    )));
  }
}
