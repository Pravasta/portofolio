import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';
import 'package:porto_mobile_app/features/web/view/widgets/default_button_web.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> launchInBrowser(String url) async {
      if (!await launchUrl(
        Uri.parse(url),
      )) {
        throw Exception('Could not launch $url');
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: MediaQuery.of(context).size.width * 1 / 7,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
          ),
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  UrlAssets.imagesFoto,
                  scale: 6,
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, I am',
                        style: AppText.text24.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pravasta Rama Fitrayana',
                        style: AppText.text30.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        'Learner Flutter & Laravel Developer',
                        style: AppText.bigText.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '''I’m a mobile developer and Laravel developer passionate about creating apps that are both functional and user-friendly. I enjoy crafting seamless digital experiences, ensuring that every app I build not only meets technical requirements but also enhances user engagement and satisfaction.
                  ''',
                        textAlign: TextAlign.justify,
                        style: AppText.text16.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppColors.greyColor,
                        ),
                      ),
                      DefaultButtonWeb(
                        title: 'Download CV',
                        width: 100,
                        borderRadius: 12,
                        padding: 20,
                        onTap: () {
                          launchInBrowser(
                              'https://docs.google.com/document/d/1aWWbwP1ed075FOJKzicsNYLz1k-4-qQ9TZXO5t2hdK8/edit?tab=t.0');
                        },
                      ),
                    ],
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
