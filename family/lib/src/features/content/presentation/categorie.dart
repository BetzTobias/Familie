import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/entertainment.dart';
import 'package:family/src/features/content/presentation/hygiene/hygiene.dart';
import 'package:family/src/features/content/presentation/learn/learn.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:family/src/features/content/presentation/story_bag/story_bags.dart';
import 'package:family/src/features/content/presentation/understanding/understanding.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const CategoriesPage(
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
                  buildCategoryButton(
                    context,
                    'Lernen',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LearnPage(
                                  databaseRepository: databaseRepository,
                                  authRepository: authRepository,
                                )),
                      );
                    },
                  ),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen dem Lernen und der Hygiene
                  buildCategoryButton(
                    context,
                    'Hygiene',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HygienePage(
                                  databaseRepository: databaseRepository,
                                  authRepository: authRepository,
                                )),
                      );
                    },
                  ),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Hygiene und der Unterhaltung
                  buildCategoryButton(
                    context,
                    'Unterhaltung',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EntertainmentPage(
                                databaseRepository: databaseRepository,
                                authRepository: authRepository)),
                      );
                    },
                  ),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Unterhaltung und der Natur
                  buildCategoryButton(
                    context,
                    'Natur',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NaturePage(
                                  databaseRepository: databaseRepository,
                                  authRepository: authRepository,
                                )),
                      );
                    },
                  ),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Natur und der Sprachentwicklung
                  buildCategoryButton(
                    context,
                    'Sprachentwicklung',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPage(
                                  databaseRepository: databaseRepository,
                                  authRepository: authRepository,
                                )),
                      );
                    },
                  ),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Sprachentwicklung und dem Logischen Denken
                  buildCategoryButton(
                    context,
                    'Logisches Denken',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LogicalThinkingPage(databaseRepository: databaseRepository,
                                  authRepository: authRepository,
                                )),
                      );
                    },
                  ),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen dem Logischen Denken und dem Verständnis
                  buildCategoryButton(
                    context,
                    'Verständnis',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UnderstandingPage(
                                  databaseRepository: databaseRepository,
                                  authRepository: authRepository,
                                )),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: SizedBox(
              height: 50, // Variable Höhe
              width: 100, // Feste Breite
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuPage(
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
