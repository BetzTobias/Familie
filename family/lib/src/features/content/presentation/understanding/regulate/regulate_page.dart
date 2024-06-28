import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/understanding/regulate/regulate_page1.dart';
import 'package:family/src/features/content/presentation/understanding/understanding.dart';
import 'package:flutter/material.dart';

class RegulatePage extends StatelessWidget {
  final AuthRepository authRepository;
  const RegulatePage({super.key, required this.authRepository});

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
                'Das Beibringen von Regeln an Kinder kann durch spielerische und leicht verständliche Ansätze erfolgen. Es ist wichtig, die Regeln klar, einfach und positiv zu formulieren. Kinder lernen am besten, wenn sie die Gründe hinter den Regeln verstehen.Hier sind einige Tipps:',
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
                              builder: (context) => UnderstandingPage(authRepository: authRepository,),
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
                              builder: (context) => RegulatePage1(
                                authRepository: authRepository,
                                regulateTipps:
                                    'Regelgeschichten: Erzähle Geschichten, in denen die Regeln auf eine kindgerechte Weise erklärt werden. Verwende Charaktere oder Situationen, die für das Kind leicht nachvollziehbar sind.',
                                rulesNumber: 1,
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
