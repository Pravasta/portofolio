import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class ProjectCardWidgetMobile extends StatefulWidget {
  const ProjectCardWidgetMobile({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  State<ProjectCardWidgetMobile> createState() =>
      _ProjectCardWidgetMobileState();
}

class _ProjectCardWidgetMobileState extends State<ProjectCardWidgetMobile> {
  bool isHovered = false;

  Future<void> _launchInBrowser(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
    )) {
      throw Exception('Could not launch $url');
    }
  }

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
            width: 180,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
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
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.greyColor.withAlpha(200),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  _launchInBrowser(widget.data['link']);
                                },
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
                        style: AppText.text12.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.data['name'],
                        textAlign: TextAlign.center,
                        style: AppText.text10.copyWith(
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
