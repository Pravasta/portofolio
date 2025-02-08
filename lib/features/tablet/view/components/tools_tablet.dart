import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';
import 'package:porto_mobile_app/features/tablet/view/widgets/tools_widget_tablet.dart';

class ToolsTablet extends StatelessWidget {
  const ToolsTablet({super.key});

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
              ToolsWidgetTablet(link: UrlAssets.iconflutter, name: 'Flutter'),
              ToolsWidgetTablet(link: UrlAssets.iconDart, name: 'Dart'),
              ToolsWidgetTablet(link: UrlAssets.iconhtml, name: 'Html'),
              ToolsWidgetTablet(link: UrlAssets.iconfigma, name: 'Figma'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ToolsWidgetTablet(link: UrlAssets.iconvscode, name: 'VsCode'),
              ToolsWidgetTablet(link: UrlAssets.iconfirebase, name: 'Firebase'),
              ToolsWidgetTablet(link: UrlAssets.icongit, name: 'Git'),
              ToolsWidgetTablet(link: UrlAssets.icongithub, name: 'Github'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ToolsWidgetTablet(link: UrlAssets.iconpostman, name: 'Postman'),
              ToolsWidgetTablet(link: UrlAssets.iconphp, name: 'Php'),
              ToolsWidgetTablet(link: UrlAssets.iconlaravel, name: 'Laravel'),
            ],
          ),
        ],
      ),
    );
  }
}
