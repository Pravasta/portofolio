import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/features/tablet/view/widgets/default_button_tablet.dart';

class NavbarTablet extends StatelessWidget {
  const NavbarTablet({
    super.key,
    required this.logoTap,
    required this.homeTap,
    required this.servicesTap,
    required this.projectsTap,
    required this.certificationTap,
    required this.contactTap,
  });

  final VoidCallback logoTap;
  final VoidCallback homeTap;
  final VoidCallback servicesTap;
  final VoidCallback projectsTap;
  final VoidCallback certificationTap;
  final VoidCallback contactTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: MediaQuery.of(context).size.width * 1 / 7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: logoTap,
            child: Text(
              'PRaav',
              style: AppText.text26.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: homeTap,
                child: Text(
                  'Home',
                  style: AppText.text14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: servicesTap,
                child: Text(
                  'Services',
                  style: AppText.text14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: projectsTap,
                child: Text(
                  'Projects',
                  style: AppText.text14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: certificationTap,
                child: Text(
                  'My Certification',
                  style: AppText.text14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              DefaultButtonTablet(
                width: 100,
                borderRadius: 12,
                title: 'Contact Me',
                onTap: contactTap,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
