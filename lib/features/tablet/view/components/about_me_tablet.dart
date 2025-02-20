import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';
import 'package:porto_mobile_app/features/tablet/view/widgets/default_button_tablet.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({super.key});

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
            height: 250,
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  UrlAssets.imagesFoto,
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 400,
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
                        style: AppText.text20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pravasta Rama Fitrayana',
                        style: AppText.text26.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        'Learner Flutter \n& Laravel Developer',
                        style: AppText.text30.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '''A beginner Mobile Programmer who is actively learning and developing mobile applications using Flutter with Laravel as the backend. Passionate about exploring new technologies, building user-friendly applications, and continuously improving skills. Eager to collaborate in a team environment, adapt to challenges, and grow as a developer.

                  ''',
                        textAlign: TextAlign.justify,
                        style: AppText.text14.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppColors.greyColor,
                        ),
                      ),
                      DefaultButtonTablet(
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
