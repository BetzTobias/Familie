import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/nature/animals/animals_page1.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:flutter/material.dart';

class AnimalsPage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const AnimalsPage({
    super.key,
    required this.authRepository,
    required this.databaseRepository,
  });

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Das Beibringen über Tiere der Natur kann für Kinder auf spielerische Weise durch Erkundung, Spiele und kreative Aktivitäten erfolgen.Durch die Kombination von Spielen, kreativen Aktivitäten und praktischen Erfahrungen wird das Lernen über Tiere der Natur für Kinder spielerisch und leicht verständlich. Hier sind einige Tipps:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 100),
              // Zurück- und Vorwärts-Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NaturePage(
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
                    bottom: 20,
                    right: 20,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnimalsPage1(
                                databaseRepository: databaseRepository,
                                authRepository: authRepository,
                                animalsNumber: 1,
                                animalsTipps:
                                    'Tierbücher und Geschichten: Lies gemeinsam mit dem Kind Bücher über Tiere. Es gibt viele illustrierte Bücher und Geschichten, die kindgerechte Informationen über verschiedene Tiere vermitteln.',
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
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
