import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:family/src/common/primary_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/domain/user.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_email/manage_profile_email.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_name/manage_profile_user.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_number/manage_profile_number.dart';
import 'package:family/src/features/authentication/presentation/settings/manage_user/manage_user_password/manage_profile_password.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProfileScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthRepository>().getCurrentUser();

    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          FutureBuilder<MyUser?>(
            future:
                context.read<DatabaseRepository>().getMyUser(user?.uid ?? ""),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return const Center(child: Text('Ein Fehler ist aufgetreten'));
              }

              if (!snapshot.hasData || snapshot.data == null) {
                print("Snapshot hat keine Daten: ${snapshot.data}");
                return const Center(child: Text('Profil Daten nicht gefunden'));
              }

              var userData = snapshot.data!.toMap();
              print("Benutzer Daten: $userData");

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Benutzername: ${userData['username']}',
                        style: const TextStyle(fontSize: 20)),
                    const SizedBox(height: 8),
                    PrimaryButton(context, 'Benutzername ändern', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ManageProfileUserPage(),
                        ),
                      );
                    }),
                    const SizedBox(height: 8),
                    Text('Email: ${userData['email']}',
                        style: const TextStyle(fontSize: 20)),
                    const SizedBox(height: 8),
                    PrimaryButton(context, 'E-Mail Adresse ändern', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ManageProfileEmailPage(),
                        ),
                      );
                    }),
                    const SizedBox(height: 8),
                    Text('Telefonnummer: ${userData['phone']}',
                        style: const TextStyle(fontSize: 20)),
                    const SizedBox(height: 8),
                    PrimaryButton(context, 'Telefonnummer ändern', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ManageProfileNumberPage(),
                        ),
                      );
                    }),
                    const SizedBox(height: 8),
                    Text('Passwort: ${userData['password']}',
                        style: const TextStyle(fontSize: 20)),
                    const SizedBox(height: 8),
                    PrimaryButton(context, 'Passwort ändern', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ManageProfilePasswordPage(),
                        ),
                      );
                    }),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
