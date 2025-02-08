import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/features/mobile/view/widgets/certification_card_widget_mobile.dart';
import 'package:porto_mobile_app/model/certification_model.dart';

class CertificationMobile extends StatelessWidget {
  const CertificationMobile({super.key});

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
            'My Certification',
            style: AppText.text30.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: CertificationModel.listCertification
                .map(
                  (e) => CertificationCardWidgetMobile(data: e),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
