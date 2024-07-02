import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/welcome/presentation/my_home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;

  const App(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Family',
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(207, 250, 255, 1),
        ),
        home: MyHomePage(
            databaseRepository: databaseRepository,
            authRepository: authRepository));
  }
}
