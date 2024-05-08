import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback onTap;

  const MenuButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 5,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Image.asset('assets/Menue.png'),
          ],
        ),
      ),
    );
  }
}