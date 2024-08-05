import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/desicion.dart';
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
              debugShowCheckedModeBanner: false,
              key: user == null ? loginKey : overviewKey,
              title: 'Family',
              theme: ThemeData.from(
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: const Color.fromRGBO(207, 250, 255, 1))),
              home: user == null ? const MyHomePage() : const DesicionPage());
        });
  }
}
