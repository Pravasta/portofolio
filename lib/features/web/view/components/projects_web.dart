import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/model/project_model.dart';
import 'package:porto_mobile_app/features/web/view/widgets/project_card_widget_web.dart';

class ProjectsWeb extends StatelessWidget {
  const ProjectsWeb({super.key});

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
            'My Projects',
            style: AppText.bigText.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Here are some of the projects I\'ve worked on, showcasing my skills and dedication\nto creating impactful and high-quality solutions',
            style: AppText.text16.copyWith(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: ProjectModel.listProjects
                .map(
                  (e) => ProjectCardWidgetWeb(data: e),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
