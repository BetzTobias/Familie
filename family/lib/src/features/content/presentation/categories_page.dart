import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Lernen einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Lernen',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Hygiene einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Hygiene',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Unterhaltung einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Unterhaltung',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Natur einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Natur',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Sprachentwicklung einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Sprachentwicklung',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Logisches Denken einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Logisches Denken',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Verständnis einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Verständnis',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Funktion für die Aktion Einstellungen einfügen
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black), // Rahmen um das Container-Widget
            ),
            child: const Text(
              'Einstellungen',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
