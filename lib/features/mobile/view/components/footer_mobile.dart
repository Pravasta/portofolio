import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/model/social_media_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constant/style/app_text.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  Future<void> _launchInBrowser(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: MediaQuery.of(context).size.width * 1 / 7,
          ),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'Pravasta Rama Fitrayana',
                style: AppText.text22.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: SocialMediaModel.listSosmed
                    .map(
                      (e) => InkWell(
                        onTap: () {
                          _launchInBrowser(e['link']);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Image.asset(
                              e['image'],
                              scale: 20,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: MediaQuery.of(context).size.width * 1 / 7,
          ),
          color: AppColors.primaryDarkColor,
          width: double.infinity,
          child: Center(
            child: Text.rich(
              TextSpan(
                text: '2025, ',
                style: AppText.text12,
                children: [
                  TextSpan(
                    text: 'Pravasta ',
                    style: AppText.text12.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  TextSpan(
                    text: 'All Right Reserved, inc',
                    style: AppText.text12,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
