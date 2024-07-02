import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/welcome/presentation/patient.dart';
import 'package:flutter/material.dart';

class DesicionPage extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const DesicionPage(
      {super.key,
      required this.authRepository,
      required this.databaseRepository});

  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
        stream: authRepository.authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;
          return user == null
                ? LoginPage(
                    databaseRepository: databaseRepository,
                    authRepository: authRepository,
                  )
                : PatientPage(
                    authRepository: authRepository,
                    databaseRepository: databaseRepository,
                  );
        });
  }
}
