import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:family/src/features/welcome/presentation/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const loginKey = ValueKey('loginScreen');
    const overviewKey = ValueKey('hompageScreen');
    return StreamBuilder(
        stream: context.read<AuthRepository>().authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;
          return MaterialApp(
              key: user == null ? loginKey : overviewKey,
              title: 'Family',
              theme: ThemeData(
                primaryColor: const Color.fromRGBO(207, 250, 255, 1),
              ),
              home: user == null ? const LoginPage() : const MyHomePage());
        });
  }
}
