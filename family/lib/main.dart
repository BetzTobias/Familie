import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:family/firebase_options.dart';
import 'package:family/src/app.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/data/firestore_database.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  DatabaseRepository databaseRepository =
      FirestoreDatabase(FirebaseFirestore.instance);
  AuthRepository authRepository = AuthRepository(FirebaseAuth.instance);
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  analytics.setAnalyticsCollectionEnabled(true);
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(MultiProvider(
      providers: [
        Provider<DatabaseRepository>(
          create: (_) => databaseRepository,
        ),
        Provider<AuthRepository>(
          create: (_) => authRepository,
        ),
      ],
      child: const App(),
    ));
  });
}
