import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/bake/american_recipe.dart';
import 'package:family/src/features/content/presentation/entertainment/bake/cookies_recipe.dart';
import 'package:family/src/features/content/presentation/entertainment/bake/rainbow_cake_recipe.dart';
import 'package:family/src/features/content/presentation/entertainment/entertainment.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        backButtonDestination: const EntertainmentPage(),
        content: [
          const SizedBox(height: 50),
          
          PrimaryButton(context, 'Amerikaner', () async {
            await FirebaseAnalytics.instance
                .logEvent(name: 'amerikaner rezept');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AmericanRecipe(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Cookies mit Smarties', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'cookies rezept');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CookiesRecipe(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Regenbogenkuchen', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'regenbogenkuchen');

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RainbowCakeRecipe(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
