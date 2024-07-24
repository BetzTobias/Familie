import 'package:family/src/common/primary_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/authentication/presentation/settings/info.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        content: [
          const SizedBox(height: 50),
          PrimaryButton(
            context,
            'Info',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InfoPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          PrimaryButton(
            context,
            'Profil verwalten',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ManageProfilePage(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          PrimaryButton(
            context,
            'Abmelden',
            () async {
              await context.read<AuthRepository>().logout();
              if (!context.mounted) return;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
                (Route<dynamic> route) => false,
              );
            },
          ),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Account löschen', () async {
            try {
              await context.read<DatabaseRepository>().deleteAccount();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            } catch (e) {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: Text('Fehler beim Löschen des Accounts: $e'),
              //     backgroundColor: Colors.red,
              //   ),
              // );
              print(e);
            }
          }),
        ],
      ),
    );
  }
}
