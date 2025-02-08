import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';
import 'package:porto_mobile_app/features/web/view/widgets/tools_widget_web.dart';

class ToolsWeb extends StatelessWidget {
  const ToolsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: MediaQuery.of(context).size.width * 1 / 7,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ToolsWidgetWeb(link: UrlAssets.iconflutter, name: 'Flutter'),
              ToolsWidgetWeb(link: UrlAssets.iconDart, name: 'Dart'),
              ToolsWidgetWeb(link: UrlAssets.iconhtml, name: 'Html'),
              ToolsWidgetWeb(link: UrlAssets.iconfigma, name: 'Figma'),
              ToolsWidgetWeb(link: UrlAssets.iconvscode, name: 'VsCode'),
              ToolsWidgetWeb(link: UrlAssets.iconfirebase, name: 'Firebase'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ToolsWidgetWeb(link: UrlAssets.icongit, name: 'Git'),
              ToolsWidgetWeb(link: UrlAssets.icongithub, name: 'Github'),
              ToolsWidgetWeb(link: UrlAssets.iconpostman, name: 'Postman'),
              ToolsWidgetWeb(link: UrlAssets.iconphp, name: 'Php'),
              ToolsWidgetWeb(link: UrlAssets.iconlaravel, name: 'Laravel'),
            ],
          ),
        ],
      ),
    );
  }
}
