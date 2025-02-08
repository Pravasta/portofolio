import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';

class ConttactMeWeb extends StatelessWidget {
  const ConttactMeWeb({super.key});

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
              style: AppText.text30,
              children: [
                TextSpan(
                  text: ' Attention!',
                  style: AppText.text30.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            'I’m excited to share my expertise and learn from others. Let’s connect and explore opportunities to innovate together!',
            style: AppText.text18.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          Text(
            'If you have any question, want to collaborate feel free to contact me.',
            style: AppText.text18.copyWith(
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
