import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/features/resources/app_constants/resources_app.dart';

class AppDecorations {
  final textFieldDecoration = InputDecoration(
      fillColor: AppColors.textfieldColor,
      filled: true,
      hintText: 'Enter the city name',
      hintStyle: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.greyColor,
          height: 21 / 21),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        borderSide: const BorderSide(color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        borderSide: BorderSide(color: AppColors.appbodyColor, width: 2.r),
      ));
  final welcomeContainerDecoration = const BoxDecoration(
    image: DecorationImage(
      image: AssetImage(
        'assets/images/weather_image.jpg',
      ),
      fit: BoxFit.fill,
    ),
  );
}
