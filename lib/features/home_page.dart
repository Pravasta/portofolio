import 'package:flutter/material.dart';
import 'package:porto_mobile_app/features/mobile/view/mobile_screen.dart';
import 'package:porto_mobile_app/features/tablet/view/tablet_screen.dart';
import 'package:porto_mobile_app/features/web/view/web_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth > 1200) {
          return WebPage();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth <= 1200) {
          return TabletScreen();
        } else {
          return MobileScreen();
        }
      },
    );
  }
}
