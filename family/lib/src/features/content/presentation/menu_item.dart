import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Widget destination;
  final double width;
  final String imagePath;
  const MenuItem(
      {super.key,
      required this.destination,
      this.width = 180,
      required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Image.asset(
        width: width,
        imagePath,
      ),
    );
  }
}
