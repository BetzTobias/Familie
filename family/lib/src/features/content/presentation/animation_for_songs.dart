import 'package:flutter/material.dart';

class AnimatedTextSection extends StatefulWidget {
  const AnimatedTextSection({super.key, required List<Text> children});

  @override
  _AnimatedTextSectionState createState() => _AnimatedTextSectionState();
}

class _AnimatedTextSectionState extends State<AnimatedTextSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500), // Animationsdauer
        height: _isExpanded ? null : 0,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alle meine Entchen, schwimmen auf dem See,schwimmen auf dem See, Köpfchen in das Wasser, Schwänzchen in die Höh.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Alle meine Täubchen, gurren auf dem Dach, gurren auf dem Dach, fliegt eins in die Lüfte, fliegen alle nach.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Alle meine Hühner, scharren in dem Stroh, scharren in dem Stroh, finden sie ein Körnchen, sind sie alle froh.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Alle meine Gänschen, watscheln durch den Grund, watscheln durch den Grund, suchen in dem Tümpel, werden kugelrund.',
            ) 
            // Platz für weitere Texte
          ],
        ),
      ),
    );
  }
}
