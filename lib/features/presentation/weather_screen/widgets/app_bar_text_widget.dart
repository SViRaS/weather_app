// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../domain/entities/weather_entity.dart';
import '../../../../common/app_constants/resources_app.dart';


class AppBarText extends StatelessWidget {
  WeatherEntity weather;

  AppBarText(this.weather, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          weather.city.toString(),
          textAlign: TextAlign.center,
          style: AppTextStyle().appBarText,
        ),
        Text(
          weather.country.toString(),
          textAlign: TextAlign.center,
          style: AppTextStyle().appBarText,
        ),
      ],
    );
  }
}
