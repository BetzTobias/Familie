import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/all_my_little_ducks_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/bi_ba_butzemann_dancing_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/blue_mountains_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/hoppe_hoppe_reiter_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/sleep_kid_sleep_song_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class AllSongsPage extends StatelessWidget {
  const AllSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Alle meine Entchen', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllMyLittleDucksSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Schlaf Kindlein, schlaf', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SleepKidSleepSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Es tanzt ein Bi-Ba-Butzemann', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BiBaButzemannSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Hoppe, hoppe Reiter', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HoppeHoppeReiterSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Von den blauen Bergen kommen wir', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BlueMountainsSongPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
