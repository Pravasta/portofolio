import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/url_assets/url_assets.dart';
import 'package:porto_mobile_app/features/mobile/view/widgets/tools_widget_mobile.dart';

class ToolsMobile extends StatelessWidget {
  const ToolsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * 1 / 10,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 15,
        children: [
          ToolsWidgetMobile(link: UrlAssets.iconflutter),
          ToolsWidgetMobile(link: UrlAssets.iconDart),
          ToolsWidgetMobile(link: UrlAssets.iconhtml),
          ToolsWidgetMobile(link: UrlAssets.iconfigma),
          ToolsWidgetMobile(link: UrlAssets.iconvscode),
          ToolsWidgetMobile(link: UrlAssets.iconfirebase),
          ToolsWidgetMobile(link: UrlAssets.icongit),
          ToolsWidgetMobile(link: UrlAssets.icongithub),
          ToolsWidgetMobile(link: UrlAssets.iconpostman),
          ToolsWidgetMobile(link: UrlAssets.iconphp),
          ToolsWidgetMobile(link: UrlAssets.iconlaravel),
        ],
      ),
    );
  }
}
