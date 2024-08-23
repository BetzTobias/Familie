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
    const videoUrl = 'https://youtu.be/yM87KmxXfwI?si=rs20a91dRLWQaFhF';
    // URL
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl) ?? '',
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

class HoppeHoppeReiterSongPage extends StatelessWidget {
  const HoppeHoppeReiterSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        backButtonDestination: const AllSongsPage(),
        showMenuButton: false,
        content: [
          const Text(
            'Hoppe hoppe Reiter',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30.0),
          Image.asset(
            'assets/Hoppe hoppe Reiter Noten.png', // Image Pfad
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
            duration: const Duration(milliseconds: 10),
            transform: Matrix4.translationValues(0.0, 0.0, 0.0),
            child: GestureDetector(
              onTap: () {
                // Animations Bereich
              },
              child: const Text(
                'Hoppe, hoppe, Reiter, wenn er fällt, dann schreit er.'
                'Fällt er in den Graben, fressen ihn die Raben.'
                'Fällt er in den Sumpf, macht der Reiter plumps.'
                'Hoppe, hoppe Reiter, wenn er fällt. dann schreit er.'
                'Fällt er in die Hecken, fressen ihn die Schnecken.'
                'Fällt er in den Sumpf, macht der Reiter plumps'
                'Hoppe, hoppe Reiter, wenn er fällt, dann schreit er'
                'Fällt er auf die Steine, tun ihm weh die Beine'
                'Fällt er in den Sumpf, macht der Reiter plumps'
                'Hoppe, hoppe, Reiter, wenn er fällt, dann schreit er.'
                'Fällt er in den Teich, find’t ihn keiner gleich. '
                'Fällt er in den Sumpf, macht der Reiter plumps'
                'Hoppe, hoppe, Reiter, wenn er fällt, dann schreit er.'
                'Fällt er in das grüne Gras, Macht er sich die Hosen nass'
                'Fällt er in den Sumpf, macht der Reiter plumps'
                'Hoppe, hoppe Reiter, wenn er fällt, dann schreit er.'
                'Fällt er in das Wasser, Wird er noch viel nasser'
                'Fällt er in den Sumpf, macht der Reiter plumps',
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
