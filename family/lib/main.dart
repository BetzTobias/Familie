import 'package:family/firebase_options.dart';
import 'package:family/src/app.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/data/mock_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DatabaseRepository databaseRepository = MockDatabase();
  AuthRepository authRepository = AuthRepository(FirebaseAuth.instance);
  runApp(App(
    databaseRepository: databaseRepository,
    authRepository: authRepository,
  ));
}
