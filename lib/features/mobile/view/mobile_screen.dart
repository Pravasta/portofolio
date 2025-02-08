import 'package:flutter/material.dart';
import 'package:porto_mobile_app/features/mobile/view/components/about_me_mobile.dart';
import 'package:porto_mobile_app/features/mobile/view/components/certification_mobile.dart';
import 'package:porto_mobile_app/features/mobile/view/components/conttact_me_mobile.dart';
import 'package:porto_mobile_app/features/mobile/view/components/footer_mobile.dart';
import 'package:porto_mobile_app/features/mobile/view/components/navbar_mobile.dart';
import 'package:porto_mobile_app/features/mobile/view/components/projects_mobile.dart';
import 'package:porto_mobile_app/features/mobile/view/components/services_mobile.dart';
import 'package:porto_mobile_app/features/mobile/view/components/tools_mobile.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
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
            NavbarMobile(
              logoTap: () => scrollToSection(homeKey),
              homeTap: () => scrollToSection(homeKey),
              servicesTap: () => scrollToSection(servicesKey),
              projectsTap: () => scrollToSection(projectsKey),
              certificationTap: () => scrollToSection(certificationKey),
              contactTap: () => scrollToSection(contactKey),
            ),
            AboutMeMobile(),
            ToolsMobile(),
            ServicesMobile(key: servicesKey),
            ProjectsMobile(key: projectsKey),
            CertificationMobile(key: certificationKey),
            ConttactMeMobile(key: contactKey),
            FooterMobile(),
          ],
        ),
      ),
    );
  }
}
