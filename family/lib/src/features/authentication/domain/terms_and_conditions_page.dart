import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String url = 'Hier kommt die Webseite hin'; // Link für die AGB´s

    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
        title: const Text('AGBs'),
      ),
      body: Center(
        child: InkWell(
          onTap: () async {
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              // Fehlermeldung falls der Link nicht funktioniert
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Link konnte nicht geöffnet werden')),
              );
            }
          },
          child: const Text(
            'Hier findest du die AGBs',
            style: TextStyle(
              color: Colors.blue, // Der Text wird als Link stilisiert
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
