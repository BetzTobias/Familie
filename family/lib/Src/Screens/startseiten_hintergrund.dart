import 'package:family/Src/Screens/button.dart';
import 'package:family/farben/farben.dart';
import 'package:flutter/material.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(background: AppColor.Hintergrund),
      ),
      home: const MyHomePage(),
    );
  }
}
