import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class DragonWindowPicturesPage extends StatelessWidget {
  const DragonWindowPicturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Drachen Fensterbild aus Eisstäbchen',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/Drachenbild.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('• Eisstäbchen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Farbiges Transparentpapier oder Seidenpapier',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Wackelaugen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schnur oder Wolle',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schere',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Filzstift',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Lineal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Heißkleber',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Leim',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Beginne mit 4 Eisstäbchen und lege diese als Parallelogramm auf. Am einfachsten geht’s, wenn die Gegenüberliegenden jeweils auf einer Ebene liegen und die anderen oben auf platziert werden. Jetzt erkennst du schon die Form eines Drachens.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt1.png',
          ),
          const Text(
              '2. Klebe anschließend die Stäbchen an den Ecken zusammen und warte einen Moment bis alles gut getrocknet ist.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt2.png',
          ),
          const Text(
              '3. Lege danach deinen Drachen auf ein Stück Transparentpapier. Durch dieses strahlt später das Licht durch dein Drachen Fensterbild. Mit dem Stift markierst du dir die Außenkanten und schneidest diese aus. Die Ecken kannst du etwas abrunden.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt3.png',
          ),
          const Text(
              '4. Im Anschluss klebst du das Papier auf deinen Drachen und drückst alles noch einmal gut fest.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt4.png',
          ),
          const Text(
              '5. Schneide danach etwa 5 Rechtecke im Format 4 x 7 cm aus verschieden farbigem Transparentpapier zu.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt5.png',
          ),
          const Text(
              '6. Nun drückst du die Rechtecke in der Mitte zusammen, sodass eine Schleife entsteht.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt6.png',
          ),
          const Text(
              '7. Danach nimmst du deine Schnur und schneidest einen etwa 60 cm langen Faden ab.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt7.png',
          ),
          const Text(
              '8. Als nächstes legst du eine Schlaufe und fädelts das Fadenende durch diese hindurch. Bevor du alles mit beiden Händen festziehst, platzierst du eine Schleife in die Schlinge. Wiederhole den Schritt bis alle Schleifen aufgefädelt sind. Der Abstand beträgt dabei etwa 7 cm.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt8.png',
          ),
          const Text(
              '9. Klebe anschließend ein Ende der Schnur auf der Rückseite des Drachens fest. Gern kannst du das Ende danach noch mit einem Papierrest abdecken. Gleich ist dein Drachen Fensterbild fertig.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt9.png',
          ),
          const Text(
              '10. Schließlich wendest du deinen Drachen wieder und gibst ihm mit Wackelaugen, Nase aus Pompon und einem breiten Lächeln den letzten Schliff.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/schritt10.png',
          ),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Zurück zu Auswahl', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CraftListPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
