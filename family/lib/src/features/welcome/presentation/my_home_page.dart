import 'package:family/src/common/logo.dart';
import 'package:family/src/features/authentication/presentation/login_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207, 250, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(),
            const SizedBox(height: 20),
            showLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showLoading = true; // Show loading circle
                      });

                      // Simulate some asynchronous operation (replace with your actual logic)
                      Future.delayed(const Duration(seconds: 3), () {
                        setState(() {
                          showLoading = false; // Hide loading circle
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0XFFEBE216),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black, // Schriftfarbe des Buttons
                      ),
                    ),
                    child: const Text('Drück mich'),
                  ),
          ],
        ),
      ),
    );
  }
}