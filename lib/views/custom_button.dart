import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do/const/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData? rightIcon;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (rightIcon != null) ...[
              SizedBox(width: 8.w),
              Icon(rightIcon, color: AppColors.white, size: 20.sp),
            ],
          ],
        ),
      ),
    );
  }
}
