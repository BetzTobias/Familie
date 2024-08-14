import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/all_my_little_ducks_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/bi_ba_butzemann_dancing_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/blue_mountains_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/hoppe_hoppe_reiter_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/sleep_kid_sleep_song_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
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
          PrimaryButton(context, 'Alle meine Entchen', () async {
            await FirebaseAnalytics.instance
                .logEvent(name: 'alle meine entchen');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllMyLittleDucksSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Schlaf Kindlein, schlaf', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'schlaf kindlein');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SleepKidSleepSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Es tanzt ein Bi-Ba-Butzemann', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'es tanzt ein');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BiBaButzemannSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Hoppe, hoppe Reiter', () async {
            await FirebaseAnalytics.instance
                .logEvent(name: 'hoppe hoppe reiter');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HoppeHoppeReiterSongPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Von den blauen Bergen kommen wir', () async {
            await FirebaseAnalytics.instance
                .logEvent(name: 'von den blauen bergen');
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
