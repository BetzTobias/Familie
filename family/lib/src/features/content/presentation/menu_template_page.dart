import 'package:family/src/common/custom_back_button.dart';
import 'package:family/src/common/menue_button.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class MenuTemplatePage extends StatelessWidget {
  final bool showMenuButton;
  final bool showBackButton;
  final List<Widget> content;
  final Widget backButtonDestination;
  const MenuTemplatePage({
    super.key,
    required this.content,
    this.showMenuButton = true,
    this.showBackButton = true,
    this.backButtonDestination = const MainSelectionPage(),
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (showMenuButton)
              Align(
                alignment: Alignment.centerLeft,
                child: MenuButton(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MenuPage()),
                    );
                  },
                ),
              ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: content,
                    ),
                  ),
                ),
              ),
            ),
            if (showBackButton)
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 50,
                      width: 100,
                      child: CustomBackButton(
                        destination: MainSelectionPage(),
                      )),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
