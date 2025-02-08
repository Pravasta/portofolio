import 'package:flutter/material.dart';
import 'package:porto_mobile_app/features/web/view/components/about_me_web.dart';
import 'package:porto_mobile_app/features/web/view/components/certification_web.dart';
import 'package:porto_mobile_app/features/web/view/components/conttact_me_web.dart';
import 'package:porto_mobile_app/features/web/view/components/footer_web.dart';
import 'package:porto_mobile_app/features/web/view/components/navbar_web.dart';
import 'package:porto_mobile_app/features/web/view/components/projects_web.dart';
import 'package:porto_mobile_app/features/web/view/components/services_web.dart';
import 'package:porto_mobile_app/features/web/view/components/tools_web.dart';

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
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
            NavbarWeb(
              logoTap: () => scrollToSection(homeKey),
              homeTap: () => scrollToSection(homeKey),
              servicesTap: () => scrollToSection(servicesKey),
              projectsTap: () => scrollToSection(projectsKey),
              certificationTap: () => scrollToSection(certificationKey),
              contactTap: () => scrollToSection(contactKey),
            ),
            AboutMeWeb(),
            ToolsWeb(),
            ServicesWeb(key: servicesKey),
            ProjectsWeb(key: projectsKey),
            CertificationWeb(key: certificationKey),
            ConttactMeWeb(key: contactKey),
            FooterWeb(),
          ],
        ),
      ),
    );
  }
}
