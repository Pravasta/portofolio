import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';

import '../../../../core/constant/style/app_text.dart';

class ToolsWidgetTablet extends StatelessWidget {
  const ToolsWidgetTablet({super.key, required this.link, required this.name});

  final String link;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(7),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.blackColor,
          ),
          child: Center(
            child: Image.asset(
              link,
              scale: 10,
            ),
          ),
        ),
        SizedBox(width: 20),
        Text(
          name,
          style: AppText.text20.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
