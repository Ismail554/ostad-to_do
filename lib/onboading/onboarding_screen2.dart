import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do/const/app_colors.dart';
import 'package:to_do/const/app_spacing.dart';
import 'package:to_do/const/app_string.dart';
import 'package:to_do/const/assets_manager.dart';
import 'package:to_do/const/font_manager.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child:
                  // Image.asset(
                  //   ImageAssets.onboardingTwo,
                  //   fit: BoxFit.contain,
                  // ),
                  SvgPicture.asset(
                    ImageAssets.onboardingSvg3,
                    fit: BoxFit.contain,
                  ),
            ),
            AppSpacing.h24,
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.onboardingTitleTwo,
                    style: FontManager.titleStyle
                        .copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        )
                        .merge(
                          const TextStyle(
                            fontFamilyFallback: ['Poppins', 'sans-serif'],
                          ),
                        ),
                    textAlign: TextAlign.center,
                  ),
                  AppSpacing.h8,
                  Text(
                    AppString.onboardingSubTitleTwo,
                    style: FontManager.subtitle
                        .copyWith(color: AppColors.grey)
                        .merge(
                          const TextStyle(
                            fontFamilyFallback: ['Nunito', 'sans-serif'],
                          ),
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
