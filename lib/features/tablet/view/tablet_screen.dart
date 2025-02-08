import 'package:flutter/material.dart';
import 'package:porto_mobile_app/features/tablet/view/components/about_me_tablet.dart';
import 'package:porto_mobile_app/features/tablet/view/components/certification_tablet.dart';
import 'package:porto_mobile_app/features/tablet/view/components/conttact_me_tablet.dart';
import 'package:porto_mobile_app/features/tablet/view/components/footer_tablet.dart';
import 'package:porto_mobile_app/features/tablet/view/components/navbar_tablet.dart';
import 'package:porto_mobile_app/features/tablet/view/components/projects_tablet.dart';
import 'package:porto_mobile_app/features/tablet/view/components/services_tablet.dart';
import 'package:porto_mobile_app/features/tablet/view/components/tools_tablet.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey certificationKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        print("Widget tidak ditemukan!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        key: homeKey,
        child: Column(
          children: [
            NavbarTablet(
              logoTap: () => scrollToSection(homeKey),
              homeTap: () => scrollToSection(homeKey),
              servicesTap: () => scrollToSection(servicesKey),
              projectsTap: () => scrollToSection(projectsKey),
              certificationTap: () => scrollToSection(certificationKey),
              contactTap: () => scrollToSection(contactKey),
            ),
            AboutMeTablet(),
            ToolsTablet(),
            ServicesTablet(key: servicesKey),
            ProjectsTablet(key: projectsKey),
            CertificationTablet(key: certificationKey),
            ConttactMeTablet(key: contactKey),
            FooterTablet(),
          ],
        ),
      ),
    );
  }
}
