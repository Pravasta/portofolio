import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';

class ToolsWidgetMobile extends StatelessWidget {
  const ToolsWidgetMobile({super.key, required this.link});

  final String link;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.blackColor,
      ),
      child: Center(
        child: Image.asset(
          link,
        ),
      ),
    );
  }
}
