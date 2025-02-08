import 'package:flutter/material.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class CertificationCardWidgetWeb extends StatelessWidget {
  const CertificationCardWidgetWeb({super.key, required this.data});

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
            width: MediaQuery.of(context).size.width * 1 / 5,
            height: 200,
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
          SizedBox(width: 50),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['title'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.text24.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  data['time'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.text14.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  data['description'],
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.text12.copyWith(
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
