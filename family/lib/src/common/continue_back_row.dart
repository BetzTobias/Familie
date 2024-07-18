import 'package:flutter/material.dart';

class ContinueBackRow extends StatelessWidget {
  final VoidCallback? onPressedForward;
  final VoidCallback? onPressedBack;
  const ContinueBackRow({super.key, this.onPressedForward, this.onPressedBack});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
            onPressed: onPressedBack,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFF16972A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Zurück',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
            onPressed: onPressedForward,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFFEBE216),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Weiter',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
