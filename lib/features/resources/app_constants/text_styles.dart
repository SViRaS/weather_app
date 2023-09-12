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
}
