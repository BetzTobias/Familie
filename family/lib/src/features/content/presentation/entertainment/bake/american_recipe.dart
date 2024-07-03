import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';

class AmericanRecipe extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const AmericanRecipe(
      {super.key,
      required this.authRepository,
      required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Amerikaner',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Image.network(
                      'https://example.com/dein_bild_link.jpg', // Ersetze dies durch deinen Bildlink
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Zutaten:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- 50g Marganrine\n- 100g Puderzucker\n- 1 Pck. Vanillezucker\n- 2 Eier\n- 1\n- 1 Päckchen Vanillezucker\n- 1 Päckchen Backpulver\n- 1 Prise Salz',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Anleitung:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '1. Den Backofen auf 180°C vorheizen.\n'
                    '2. Die Butter und den Zucker schaumig rühren.\n'
                    '3. Die Eier nach und nach unterrühren.\n'
                    '4. Das Mehl mit dem Backpulver und Salz mischen und abwechselnd mit der Milch unter die Butter-Ei-Masse rühren.\n'
                    '5. Den Teig auf ein mit Backpapier ausgelegtes Blech geben und zu kleinen Kreisen formen.\n'
                    '6. Die Amerikaner im vorgeheizten Ofen ca. 15-20 Minuten backen, bis sie goldgelb sind.\n'
                    '7. Nach dem Abkühlen nach Belieben verzieren.',
                    style: TextStyle(fontSize: 16),
                  ),
                  // Weitere Rezeptabschnitte hier hinzufügen...
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Füge hier deine Zurück-Funktionalität hinzu
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }
}