import 'package:flutter/material.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class ProjectCardWidgetTablet extends StatefulWidget {
  const ProjectCardWidgetTablet({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  State<ProjectCardWidgetTablet> createState() =>
      _ProjectCardWidgetTabletState();
}

class _ProjectCardWidgetTabletState extends State<ProjectCardWidgetTablet> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (_) {
            setState(() => isHovered = true);
          },
          onExit: (_) {
            setState(() => isHovered = false);
          },
          child: SizedBox(
            width: 200,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            widget.data['cover'],
                          ),
                        ),
                      ),
                    ),
                    isHovered
                        ? Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.greyColor.withAlpha(200),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'See Project',
                                  style: AppText.text14.copyWith(
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  selectionColor: AppColors.primaryDarkColor,
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        widget.data['category'],
                        style: AppText.text16.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.data['name'],
                        style: AppText.text14.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
