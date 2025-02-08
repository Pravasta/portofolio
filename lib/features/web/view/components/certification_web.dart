import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/features/web/view/widgets/certification_card_widget_web.dart';
import 'package:porto_mobile_app/model/certification_model.dart';

class CertificationWeb extends StatelessWidget {
  const CertificationWeb({super.key});

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
          Text(
            'My Certification',
            style: AppText.bigText.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 50),
          Column(
            children: CertificationModel.listCertification
                .map(
                  (e) => CertificationCardWidgetWeb(data: e),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
