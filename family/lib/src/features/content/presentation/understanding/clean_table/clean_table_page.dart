import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/understanding/clean_table/clean_table_page1.dart';
import 'package:family/src/features/content/presentation/understanding/understanding.dart';
import 'package:flutter/material.dart';

class CleanTablePage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const CleanTablePage(
      {super.key,
      required this.authRepository,
      required this.databaseRepository});

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
                'Es ist wichtig, das Aufräumen als positive und normale Tätigkeit zu präsentieren. Indem du spielerische Elemente einfügst, wird das Aufräumen des Tisches für Kinder nicht nur leicht verständlich, sondern auch angenehmer.Hier sind einige Tipps:',
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
                              builder: (context) => UnderstandingPage(
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
                              builder: (context) => CleanTablePage1(
                                databaseRepository: databaseRepository,
                                authRepository: authRepository,
                                cleanTipps:
                                    'Lustige Aufräumlieder: Erfinde oder suche nach lustigen Aufräumliedern. Diese können den Prozess unterhaltsamer gestalten und dem Kind helfen, sich besser zu engagieren.',
                                cleanNumber: 1,
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
