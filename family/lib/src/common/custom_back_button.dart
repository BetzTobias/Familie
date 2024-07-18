import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Widget destination;
  const CustomBackButton({super.key, required this.destination});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          const Color(0XFF16972A),
        ),
        foregroundColor: WidgetStateProperty.all<Color>(
          Colors.black, // Schriftfarbe des Buttons
        ),
      ),
      child: const Text('zurück'),
    );
  }
}
