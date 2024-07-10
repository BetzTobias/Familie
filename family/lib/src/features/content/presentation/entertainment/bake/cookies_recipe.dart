import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';

class CookiesRecipe extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const CookiesRecipe(
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
                  const SizedBox(height: 34),
                  const Center(
                    child: Text(
                      'Cookies mit Smarties',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Image.asset(
                      'assets/Cookies.png', // Ersetze dies durch deinen Bildlink
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Zutaten Teig:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '- 125g Butter\n- 125g Zucker\n- 1 Ei\n- 230g Weizenmehl\n- 2 Tl. Backpulver\n- 1 Vanilleschote (das Mark davon)\n- 130g Smartis (1 Rolle)',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Anleitung:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Für eure Cookies mit Smarties vermischt ihr zuerst die Zutaten zu einem geschmeidigen Keksteig',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Dann rollt ihr kleine Teigkugeln, die ihr mit einigem Abstand zueinander auf einem mit Backblech belegtes Blech legt. Die Teigkugeln werden anschließend etwas flachgedrückt.',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Jetzt nehmt ihr euch eure Smartis und belegt jeden Cookie eng mit Smarties. Wenn die Cookies fast überladen mit Smarties sind, dann sind genug drauf. Die Kekse gehen nämlich im Ofen noch sehr weit auseinander, so dass sich die Smarties dann auch noch gut verteilen.',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Und dann geht es für eure Cookies mit Smarties auch schon in den Ofen, wo sie bei 175° C bei OberUnterhitze etwa 10 min. oder 160° C bei Umluft für 8 min. backen. Wenn ihr sie lieber weich haben möchet, nehmt ihr sie dann gleich raus, aber wenn ihr lieber knusprige Cookies möchtet, dann wartet ihr bis sich der Rand leicht braun färbt.',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Bevor ihr eure Cookies dann vom Blech nehmt solltet ihr sie gut auskühlen lassen, da sie sonst schnell brechen können.',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 340,
            child: FloatingActionButton(
              onPressed: () {
                // Füge hier deine Zurück-Funktionalität hinzu
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }
}
