import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/welcome/presentation/patient.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesicionPage extends StatelessWidget {
  const DesicionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: context.read<AuthRepository>().authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;
          return user == null ? const LoginPage() : const PatientPage();
        });
  }
}
