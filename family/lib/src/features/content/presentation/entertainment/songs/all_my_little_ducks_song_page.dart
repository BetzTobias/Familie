import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MusikPlayButton extends StatefulWidget {
  const MusikPlayButton({super.key});

  @override
  State<MusikPlayButton> createState() => _MusikPlayButtonState();
}

class _MusikPlayButtonState extends State<MusikPlayButton> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'FIIYUvZPu3c',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  void _playVideo() {
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
        ElevatedButton(
          onPressed: _playVideo,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              const Color(0XFFEBE216),
            ),
          ),
          child: const Text('Play Video'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Musik Player')),
        body: const Center(
          child: MusikPlayButton(),
        ),
      ),
    );
  }
}

class AllMyLittleDucksSongPage extends StatelessWidget {
  const AllMyLittleDucksSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        backButtonDestination: const AllSongsPage(),
        content: [
          const Text(
            'Alle meine Entchen',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30.0),
          Image.asset(
            'assets/Alle meine Entchen Noten.png', // Image Pfad
            height: 200.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 15.0),
          const Center(child: MusikPlayButton()),
          const SizedBox(height: 15.0),
          AnimatedContainer(
            duration: const Duration(milliseconds: 30),
            transform: Matrix4.translationValues(0.0, 0.0, 0.0),
            child: GestureDetector(
              onTap: () {
                // Animations Bereich
              },
              child: const Text(
                'Alle meine Entchen, schwimmen auf dem See, schwimmen auf dem See, Köpfchen in das Wasser, Schwänzchen in die Höh. Alle meine Täubchen, gurren auf dem Dach, gurren auf dem Dach, fliegt eins in die Lüfte, fliegen alle nach. Alle meine Hühner, scharren in dem Stroh, scharren in dem Stroh, finden sie ein Körnchen, sind sie alle froh. Alle meine Gänschen, watscheln durch den Grund, watscheln durch den Grund, suchen in dem Tümpel, werden kugelrund.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
