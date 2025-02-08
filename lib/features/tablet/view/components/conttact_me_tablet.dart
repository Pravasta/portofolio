import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';

class ConttactMeTablet extends StatelessWidget {
  const ConttactMeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: MediaQuery.of(context).size.width * 1 / 7,
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              text: 'Thanks for your',
              style: AppText.text28,
              children: [
                TextSpan(
                  text: ' Attention!',
                  style: AppText.text28.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            'I’m excited to share my expertise and learn from others. Let’s connect and explore opportunities to innovate together!',
            style: AppText.text14.copyWith(
              color: AppColors.greyColor,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'If you have any question, want to collaborate feel free to contact me.',
            style: AppText.text14.copyWith(
              color: AppColors.greyColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
