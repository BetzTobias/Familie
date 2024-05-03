import 'package:family/src/features/welcome/presentation/my_home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch:  Color.fromRGBO(207, 250, 255, 1))),
      home: const MyHomePage(),
    );
  }
}
