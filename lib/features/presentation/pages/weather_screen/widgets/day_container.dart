// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/features/resources/app_constants/resources_app.dart';

import '../../../../../repositories/weather_repository/models/weather_model.dart';

class DayContainer extends StatelessWidget {
  WeatherModel weather;
  DayContainer(
    this.weather,
    
  {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      decoration: BoxDecoration(
        color: AppColors.textfieldColor,
        borderRadius: BorderRadius.all(Radius.circular(4.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text(weather.toString(), style: TextStyle(color: Colors.black, fontSize:24.sp, height: 24 / 24),),
            SizedBox(
              child: 
              Row(
                children: [
                  Text(weather.toString(), style: TextStyle(color: AppColors.redColor, fontSize:24.sp, height: 24 / 24),),
                  SizedBox(width: 4.w,),
                 SizedBox(
                        width: 42.w,
                        height: 42.h,
                       child: Image.network('https:${weather.toString()}'),
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