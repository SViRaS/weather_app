import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyle {
  final appBarText = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      height: 24 / 20,
      shadows: [
        Shadow(
            color: AppColors.shadowColor,
            blurRadius: 4.r,
            offset: const Offset(0, 4))
      ]);

  final goToTheForecastText = TextStyle(
    fontSize: 26.sp,
    height: 31 / 26,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );

  final textFieldText = TextStyle(
    fontSize: 21.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.appbodyColor,
    height: 21 / 21,
  );

  final pleaseWaitText = TextStyle(
    color: Colors.white,
    decoration: TextDecoration.none,
    fontSize: 20.sp,
    height: 20 / 20,
  );

  final mainCard14spText = TextStyle(
    fontSize: 14.sp,
    height: 14 / 14,
    fontWeight: FontWeight.w600,
  );

  final mainCard16spText = TextStyle(
    fontSize: 16.sp,
    height: 16 / 16,
    fontWeight: FontWeight.w600,
  );

  final mainCard35spText = TextStyle(
    fontSize: 35.sp,
    height: 35 / 35,
    fontWeight: FontWeight.w700,
  );

  final forecastForNextDaysText = TextStyle(
      fontSize: 24.sp,
      height: 24 / 24,
      fontWeight: FontWeight.bold,
      color: AppColors.darkColor);

  final cityNameNotFoundText = TextStyle(
      fontSize: 24.sp,
      height: 24 / 24,
      color: AppColors.darkColor,
      fontWeight: FontWeight.w600);

  final pleaseEnterCorrectName = TextStyle(
      fontSize: 16.sp,
      height: 16 / 16,
      color: AppColors.darkColor,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.underline);
}
