import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:family/src/features/content/presentation/nature/trees/trees_page1.dart';
import 'package:flutter/material.dart';

class TreesPage extends StatelessWidget {
  final AuthRepository authRepository;
  const TreesPage({super.key, required this.authRepository});

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
                'Das Waschen kann für Kinder durch spielerische und kreative Methoden zu einer unterhaltsamen Gewohnheit werden.Indem du das Waschen mit Spaß verbindest, kannstDas Beibringen über Bäume der Natur kann für Kinder durch spielerische und kreative Methoden unterhaltsam und leicht verständlich gestaltet werden. Indem du spielerische Elemente in das Lernen über Bäume integrierst, kannst du die Neugier und das Verständnis des Kindes fördern. Dies ermöglicht es ihnen, die Schönheit und Bedeutung der Bäume in der Natur zu schätzen.Hier sind einige Tipps: du es für Kinder leicht verständlich machen und sie dazu ermutigen, diese wichtige Hygienemaßnahme als Teil ihrer täglichen Routine zu akzeptieren. Hier sind einige Tipps:',
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
                              builder: (context) => TreesPage1(
                                authRepository: authRepository,
                                treesNumber: 1,
                                treesTipps:
                                    'Baumarten entdecken: Gehe mit dem Kind nach draußen und erkunde gemeinsam verschiedene Baumarten. Zeige auf unterschiedliche Blätter, Rinden und Formen der Bäume.',
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
