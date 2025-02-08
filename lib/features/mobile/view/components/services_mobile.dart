import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';

class ServicesMobile extends StatelessWidget {
  const ServicesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * 1 / 10,
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'My Service',
            style: AppText.text30.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Mobile Developer',
                        style: AppText.text16.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Developing high-quality mobile applications using Flutter, leveraging custom widgets and APIs. Ensuring seamless performance and a responsive userexperience across platforms.',
                        style: AppText.text12.copyWith(
                          color: AppColors.primaryDarkColor,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Laravel Developer',
                        style: AppText.text16.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Developing efficient back-end systems with Laravel, leveraging MySQL for robust data management and complex queries. Ensuring database optimization, security, and seamless application performance.',
                        style: AppText.text12.copyWith(
                          color: AppColors.primaryDarkColor,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Microsoft Excel',
                        style: AppText.text16.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Mastering data organization and analysis using Microsoft Excel, leveraging advanced formulas, pivot tables, and data visualization tools. Ensuring accuracy and efficiency in data-driven decision-making.',
                        style: AppText.text12.copyWith(
                          color: AppColors.primaryDarkColor,
                        ),
                        textAlign: TextAlign.center,
                      )
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
