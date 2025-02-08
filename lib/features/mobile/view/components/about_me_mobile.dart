import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';
import 'package:porto_mobile_app/features/mobile/view/widgets/default_button_mobile.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * 1 / 10,
      ),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 10,
                        children: [
                          Text(
                            'Hello, I am',
                            style: AppText.text16.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Pravasta Rama Fitrayana',
                            style: AppText.text18.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          Text(
                            'Learner Flutter \n& Laravel Developer',
                            style: AppText.text24.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        UrlAssets.imagesFoto,
                        fit: BoxFit.cover,
                        scale: 20,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''I’m a mobile developer and Laravel developer passionate about creating apps that are both functional and user-friendly. I enjoy crafting seamless digital experiences, ensuring that every app I build not only meets technical requirements but also enhances user engagement and satisfaction.
                  ''',
                    textAlign: TextAlign.justify,
                    style: AppText.text14.copyWith(
                      fontWeight: FontWeight.w300,
                      color: AppColors.greyColor,
                    ),
                  ),
                  DefaultButtonMobile(
                    title: 'Download CV',
                    width: 100,
                    borderRadius: 12,
                    padding: 15,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
