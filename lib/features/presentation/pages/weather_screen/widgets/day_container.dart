// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/features/resources/app_constants/resources_app.dart';

class DayContainer extends StatelessWidget {

  final String weather_tempCelsium;
  final int weather_date;
  final String weather_networkImage;

  const DayContainer(
      {
      required this.weather_tempCelsium,
      required this.weather_date,
      required this.weather_networkImage,
      super.key,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      decoration: BoxDecoration(
        color: AppColors.textfieldColor,
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateUtil.formattedDate_EEEE_d(
                  DateTime.fromMillisecondsSinceEpoch(weather_date * 1000)),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  height: 24 / 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              child: Row(
                children: [
                  Text(
                    weather_tempCelsium,
                    style: TextStyle(
                        color: AppColors.redColor,
                        fontSize: 24.sp,
                        height: 24 / 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  SizedBox(
                    width: 42.w,
                    height: 42.h,
                    child: Image.network(
                        'https:${weather_networkImage.toString()}'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
