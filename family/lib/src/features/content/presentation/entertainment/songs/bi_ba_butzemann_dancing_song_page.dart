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
    // URL
    _controller = YoutubePlayerController(
      initialVideoId: '0cSI4_WeSCk',
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

class BiBaButzemannSongPage extends StatelessWidget {
  const BiBaButzemannSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        backButtonDestination: const AllSongsPage(),
        content: [
          const Text(
            'Es tanzt ein Bi-Ba-Butzemann',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30.0),
          Image.asset(
            'assets/Es tanzt ein Bi Ba Butzemann Noten.png', // Image Pfad
            height: 200.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 15.0),
          const MusikPlayButton(),
          const SizedBox(height: 15.0),
          AnimatedContainer(
            duration: const Duration(milliseconds: 30),
            transform: Matrix4.translationValues(0.0, 0.0, 0.0),
            child: GestureDetector(
              onTap: () {
                // Animations Bereich
              },
              child: const Text(
                'Es tanz ein Bi-Ba- Butzemann in unserm Haus herum, dideldum. Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum. Er rüttelt sich, er schüttelt sich, Er wirft sein Säcklein hinter sich. Es tanzt ein Bi- Ba- Butzemann in unsrem Haus herum. Es tanzt ein Bi-Ba-Butzemann in unserm Haus herum, dideldum, Es tanzt ein Bi-Ba-Butzemann in unserm Haus herum. Er wirft sein Säcklein her und hin, Was ist wohl in dem Säcklein drin? Es tanzt ein Bi-Ba-Butzemann in unserm Haus herum. Es tanz ein Bi-Ba- Butzemann in unserm Haus herum, dideldum. Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum. Er bringt zur Nacht dem guten Kind, Die Äpfel, die im Säcklein sind. Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum. Es tanzt ein Bi-Ba-Butzemann in unserm Haus herum, dideldum, Es tanzt ein Bi-Ba-Butzemann in unserm Haus herum. Er wirft sein Säcklein hin und her, Am Morgen ist es wieder leer. Es tanzt ein Bi-Ba-Butzemann in unserm Haus herum.',
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
