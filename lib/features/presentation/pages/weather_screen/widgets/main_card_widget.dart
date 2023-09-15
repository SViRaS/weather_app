// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:weather/features/resources/app_constants/resources_app.dart';
import '../../../../../repositories/weather_repository/models/weather_model.dart';

class MainCard extends StatelessWidget {
  WeatherModel weather;
  MainCard(this.weather, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4.r)),
      ),
      child: Padding(
          padding: EdgeInsets.only(left: 12.w, bottom: 8.h, right: 8.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(weather.localtime.toString(),
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                                DateUtil.formattedDate_yMd(
                                    DateTime.fromMillisecondsSinceEpoch(
                                        weather.date! * 1000)),
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    height: 16 / 16,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text('${weather.current_tempCelsium}°C',
                      style: TextStyle(
                          fontSize: 30.sp,
                          height: 30 / 30,
                          fontWeight: FontWeight.w800)),
                  Column(
                    children: [
                      SizedBox(height: 4.h,),
                      SizedBox(
                        width: 28.w,
                        height: 28.h,
                        child: Image.network(
                            'https:${weather.networkImage}'),
                      ),
                      SizedBox(
                          width: 75.w,
                          child: Text(
                              weather.weatherCondition.toString(),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  height: 14 / 14,
                                  fontWeight: FontWeight.w600))),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Wind:',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  height: 14 / 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(weather.wind_kph.toString(),
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text('kmh,',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(weather.wind_dir.toString(),
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            Text('Change of rain:',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(width: 4.w),
                            Text('${weather.chance_of_rain}',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/arrow_up.svg',
                              width: 12.w,
                              height: 12.h,
                            ),
                            SizedBox(width: 2.w,),
                            Text('${weather.max_tempCelsium_of_day}°',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/arrow_down.svg',
                              height: 12.h,
                              width: 12.w,
                            ),
                            SizedBox(width: 2.w,),
                            Text('${weather.min_tempCelsium_of_day}°',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    height: 14 / 14,
                                    fontWeight: FontWeight.w600)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
