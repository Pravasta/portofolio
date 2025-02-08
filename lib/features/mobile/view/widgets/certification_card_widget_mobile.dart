import 'package:flutter/material.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class CertificationCardWidgetMobile extends StatelessWidget {
  const CertificationCardWidgetMobile({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primaryDarkColor,
        border: Border.all(
          width: 1,
          color: AppColors.primaryDarkColor,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1 / 3,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  data['cover'],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['title'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.text18.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  data['time'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.text10.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  data['description'],
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.text10.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.greyColor,
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
