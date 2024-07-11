import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountDelete extends StatelessWidget {
  const AccountDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
        title: const Text('Account löschen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Daten werden unwiederruflich gelöscht und können nicht mehr Wiederhergestellt werden.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await context.read<DatabaseRepository>().deleteAccount();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Fehler beim Löschen des Accounts: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Colors.red,
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(
                    Colors.white, // Schriftfarbe des Buttons
                  ),
                ),
                child: const Text('Account löschen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
