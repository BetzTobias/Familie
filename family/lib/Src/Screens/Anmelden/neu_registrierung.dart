import 'package:family/Src/Farben/farben.dart';
import 'package:family/main.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeuRegistrieren',
      theme: ThemeData(
        backgroundColor: AppColor.Hintergrund,
      ),
      home: NeuRegistrierung(),
    );
  }
}

class NeuRegistrierung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrieren',
            style: TextStyle(decoration: TextDecoration.underline)),
        backgroundColor: AppColor.Hintergrund,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'lib/assets/Hauptlogo.png', // Logo Pfad
              height: 250,
              width: 100, // Höhe des Logos
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              _buildTextFieldWithIcon("Benutzername", Icons.person),
              SizedBox(height: 20),
              _buildTextFieldWithIcon("Telefonnummer", Icons.phone),
              SizedBox(height: 20),
              _buildTextFieldWithIcon("E-Mail Adresse", Icons.email),
              SizedBox(height: 20),
              _buildTextFieldWithIconAndSuffix(
                "Passwort",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
              ),
              SizedBox(height: 20),
              _buildTextFieldWithIconAndSuffix(
                "Passwort wiederholen",
                Icons.lock,
                Icons.visibility,
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hauptseite1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.Startbutton,
                  foregroundColor: AppColor.Schrift,
                ),
                child: Text('Benutzer erstellen'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => ErsteSeite()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.AbbruchButton,
                  foregroundColor: AppColor.Schrift,
                ),
                child: Text('Abbruch'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIcon(String labelText, IconData iconData) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(iconData),
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildTextFieldWithIconAndSuffix(
      String labelText, IconData prefixIconData, IconData suffixIconData,
      {required bool obscureText}) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIconData),
        suffixIcon: Icon(suffixIconData),
        border: OutlineInputBorder(),
      ),
    );
  }
}
