import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class RainbowCakeRecipe extends StatelessWidget {
  const RainbowCakeRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        content: [
          const SizedBox(height: 34),
          const Center(
            child: Text(
              'Regenbogenkuchen',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Image.asset(
              'assets/Regenbogenkuchen.png',
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
            '- Lebensmittelfarbe (min. 4 Farben)\n- Puderzucker\n- Zitronensaft\n- 7 Eier\n- 2 Pck. Vanillezucker\n- 550g Mehl\n- 375g Zucker\n- 1,5 Pck. Backpulver\n- 340 ml Speiseöl\n- 190 ml Wasser',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
          const SizedBox(height: 8),
          const Text(
            'Schritt 1',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Für euren Regenbogenkuchen vom Blech müsst ihr als erstes die Eier trennen und das Eiweiß steif schlagen. Dann ab mit dem Eischnee in den Kühlschrank.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const SizedBox(height: 8),
          const Text(
            'Schritt 2',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Das Eigelb gebt ihr in eine große Schüssel. Es folgen der normale Zucker und der Vanillezucker. Jetzt die ersten Zutaten eures Regenbogenkuchens schön cremig rühren und nach und nach das Speiseöl, Wasser, Mehl und Backpulver dazu geben. Kleiner Tipp: Wollt ihr den Teig für den Regenbogenkuchen besonders fluffig? Dann siebt das Mehl',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Schritt 3',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Sind alle Zutaten in der Schüssel kann gemixt werden. Achtet darauf, dass keine Klümpchen im Teig sind und es eine cremige Masse ist.An dieser Stelle könnt ihr auch schon den Ofen auf ca. 180°C vorheizen. Nun noch den kalten Eischnee aus dem Kühlschrank holen und vorsichtig mit einem Löffel unter den Teig heben.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Schritt 4',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Jetzt nehmt ihr kleine Schalen um den Teig für den Regenbogenkuchen portionsweise einzufärben. Für jede Farbe benötigt ihr eine Schale. Damit der Regenbogen schön bunt wird, könnt ihr auch Farben mischen. Blau und Rot ergibt z.B. Lila, probiert es einfach aus. Sechs Farben sind für einen schönen Regenbogenkuchen optimal.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Schritt 5',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Jetzt verteilt ihr den Teig gleichmäßig auf eure 4-6 Schalen. Dafür könnt ihr euch eine Küchenwaage zur Hilfe nehmen oder ihr verteilt den Teig Löffel- oder kellenweise auf eure Schalen.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Schritt 6 ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'In jede Schale rührt ihr nun die Lebensmittelfarbe in den Teig. Zum leichteren Einfärben könnt ihr dafür auch den Mixer nehmen. Seid ihr damit fertig, greift ihr zu dem Backblech und fettet es ein oder legt es mit Backpapier aus. Für jede Farbe benötigt ihr nun zwei Löffel, damit ihr den Regenbogenkuchen-Teig gut verteilen könnt. Jetzt geht’s richtig los mit dem Regenbogenkuchen! Ihr geht beim Befüllen wie folgt vor. Da wir einen Regenbogenkuchen für ein ganzes Blech backen, machen wir aufgrund der Menge gleich zwei Regenbögen nebeneinander.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Teilt euer Backblech also gedanklich in zwei Hälften und legt in jeder Hälfte einen Mittelpunkt für unsere kreisrunden Regenbögen fest. Ihr nehmt jetzt 2 EL von der ersten Farbe, das kann z.B. Rot sein, dann ab damit in die Mitte eures einen Regenbogens und das gleich für den zweiten Regenbogen. Dann die zweite Farbe auch mit 2 EL auf die erste platzieren-also immer den neuen Teig auf unseren gedachten Mittelpunkt geben und das Ganze für Regenbogen eins und zwei. Das gleiche macht ihr mit der dritten und vierten Farbe und so weiter, solange bis kein Teig mehr übrig ist und für ein optimales Ergebnis immer in der gleichen Reihenfolge. Ihr werdet sehen, dass der bunte Teig von alleine verläuft und ihr alle Farben als bunte Ringe bewundern könnt.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Schritt 7',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Jetzt sieht der bunte Blechkuchen schon ziemlich gut aus, aber wartet ab bis er erst gebacken ist. Also rein damit in den Ofen. Bei 180°C ca. 60 Minuten backen lassen und dann mit einem Holzstäbchen in den Teig pieksen und gucken, ob der Teig noch daran kleben bleibt. Sind noch Teigreste am Holzstäbchen muss der Kuchen noch einige Minuten backen, ansonsten kann der Regenbogenkuchen auf dem Blech raus aus dem Ofen.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Schritt 8',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Jetzt erstmal den heißen Regenbogenkuchen abkühlen lassen. Danach könnt ihr ihn z.B. mit Zuckerguss und Streuseln oder Smarties dekorieren. Für den Zuckerguss einfach Puderzucker mit etwas Wasser oder mit Zitronensaft anrühren, je nach gewünschter Konsistenz auf dem Regenbogenkuchen verteilen. Solange der Zuckerguss noch klebrig ist bleiben auch die Streusel gut haften. Ist die Glasur hart, könnt ihr den Kuchen endlich anschneiden. Ihr werdet sehen, dass die Streifen nun von oben nach unten verlaufen und einen wunderschönen, farbenprächtigen Regenbogen bilden.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
