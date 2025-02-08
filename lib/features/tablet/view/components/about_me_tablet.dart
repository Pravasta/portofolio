import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';
import 'package:porto_mobile_app/features/tablet/view/widgets/default_button_tablet.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({super.key});

  @override
  Widget build(BuildContext context) {
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
                        '''I’m a mobile developer and Laravel developer passionate about creating apps that are both functional and user-friendly. I enjoy crafting seamless digital experiences, ensuring that every app I build not only meets technical requirements but also enhances user engagement and satisfaction.
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
                        onTap: () {},
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
