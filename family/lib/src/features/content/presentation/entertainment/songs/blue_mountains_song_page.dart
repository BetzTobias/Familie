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
      initialVideoId: 'tpsPOc5cMT8',
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

class BlueMountainsSongPage extends StatelessWidget {
  const BlueMountainsSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        backButtonDestination: const AllSongsPage(),
        content: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Von den blauen Bergen kommen wir',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                Image.asset(
                  'assets/Von den Blauen Bergen kommen wir Noten.png', // Image Pfad
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 15.0),
                const MusikPlayButton(),
                const SizedBox(
                  height: 15,
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 30),
                  transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      // Animations Bereich
                    },
                    child: const Text(
                      'Von den blauen Bergen kommen wir, von den Bergen, ach so weit von hier. Auf den Rücken unsrer Pferde reiten wir wohl um die Erde, von den blauen Bergen kommen wir.'
                      'Refrain: Singen ja ja jipi jipi jeh! Singen ja ja jipi jipi jeh! Singen ja ja, jipi jipi ja ja, jipi jipi ja ja, jipi jipi jeh!'
                      'Von den blauen Bergen kommen wir, von den blauen Bergen, die so weit von hier. Reisen, das ist unsre Wonne, scheint auch noch so heiß die Sonne, von den blauen Bergen kommen wir.'
                      'Refrain: Singen ja ja jipi jipi jeh! Singen ja ja jipi jipi jeh! Singen ja ja, jipi jipi ja ja, jipi jipi ja ja, jipi jipi jeh!'
                      'Von den blauen Bergen kommen wir, Und wir fangen selbst den stärksten Stier, Auf dem Rücken uns´rer Pferde. Reiten wir wohl um die Erde. Von den blauen Bergen kommen wir'
                      'Refrain: Singen ja ja jipi jipi jeh! Singen ja ja jipi jipi jeh! Singen ja ja, jipi jipi ja ja, jipi jipi ja ja, jipi jipi jeh!'
                      'Von den blauen Bergen kommen wir, von den blauen Bergen, die so weit von hier. Mag die Welt im Schlaf sich wiegen, wir sind nicht vom Pferd zu kriegen. Von den blauen Bergen kommen wir. '
                      'Refrain: Singen ja ja jipi jipi jeh! Singen ja ja jipi jipi jeh! Singen ja ja, jipi jipi ja ja, jipi jipi ja ja, jipi jipi jeh!'
                      'Wenn des Nachts der Mond am Himmel steht und der Wind über die Prärien weht. Sitzen wir am Lagerfeuer und es ist uns nicht geheuer, von den blauen Bergen kommen wir.'
                      'Refrain: Singen ja ja jipi jipi jeh! Singen ja ja jipi jipi jeh! Singen ja ja, jipi jipi ja ja, jipi jipi ja ja, jipi jipi jeh!'
                      'Wenn des Flusses schwarze Welle sinkt, die Gitarre leis dazu erklingt, ruhen wir in bunter Runde, geht ein Lied von Mund zu Munde. Von den blauen Bergen kommen wir.'
                      'Refrain: Singen ja ja jipi jipi jeh! Singen ja ja jipi jipi jeh! Singen ja ja, jipi jipi ja ja, jipi jipi ja ja, jipi jipi jeh!',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
