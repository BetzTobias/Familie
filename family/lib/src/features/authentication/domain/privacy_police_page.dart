import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String privacyPolicyUrl = 'https://emerald-lanni-74.tiiny.site/'; // URL der Datenschutzrichtlinie

    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
        title: const Text('Datenschutzerklärung'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  if (await canLaunch(privacyPolicyUrl)) {
                    await launch(privacyPolicyUrl);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Link konnte nicht geöffnet werden'),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Datenschutzerklärung aufrufen',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}