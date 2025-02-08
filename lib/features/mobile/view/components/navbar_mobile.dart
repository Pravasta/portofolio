import 'package:flutter/material.dart';
import 'package:porto_mobile_app/core/constant/style/app_colors.dart';
import 'package:porto_mobile_app/core/constant/style/app_text.dart';
import 'package:porto_mobile_app/features/mobile/view/widgets/default_button_mobile.dart';

class NavbarMobile extends StatefulWidget {
  const NavbarMobile({
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
  State<NavbarMobile> createState() => _NavbarMobileState();
}

class _NavbarMobileState extends State<NavbarMobile> {
  bool isExpand = false;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: widget.logoTap,
                child: Text(
                  'PRaav',
                  style: AppText.text26.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    isExpand = !isExpand;
                  });
                },
                icon: Icon(
                  isExpand ? Icons.close : Icons.menu_outlined,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
          isExpand == false
              ? SizedBox()
              : Column(
                  children: [
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: widget.homeTap,
                        child: Text(
                          'Home',
                          style: AppText.text12.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: widget.servicesTap,
                        child: Text(
                          'Services',
                          style: AppText.text12.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: widget.projectsTap,
                        child: Text(
                          'Projects',
                          style: AppText.text12.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: widget.certificationTap,
                        child: Text(
                          'Certification',
                          style: AppText.text12.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    DefaultButtonMobile(
                      width: double.infinity,
                      borderRadius: 5,
                      title: 'Contact Me',
                      onTap: widget.contactTap,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
