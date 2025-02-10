import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class ProjectCardWidgetWeb extends StatefulWidget {
  const ProjectCardWidgetWeb({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  State<ProjectCardWidgetWeb> createState() => _ProjectCardWidgetWebState();
}

class _ProjectCardWidgetWebState extends State<ProjectCardWidgetWeb> {
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
            width: 300,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 300,
                      height: 300,
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
                            width: 300,
                            height: 300,
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
