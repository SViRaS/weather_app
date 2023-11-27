// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class WeatherEntity extends Equatable {
  String city;
  String country;
  double current_tempCelsium;
  double min_tempCelsium_of_day;
  double max_tempCelsium_of_day;
  String localtime;
  double wind_kph;
  String wind_dir;
  int chance_of_rain;
  int date;
  String networkImage;
  String weatherCondition;
  int date_2th_day;
  double tempCelsium_2th_day;
  String networkImage_2th_day;
  int date_3th_day;
  double tempCelsium_3th_day;
  String networkImage_3th_day;

  WeatherEntity({
    required this.city,
    required this.country,
    required this.current_tempCelsium,
    required this.min_tempCelsium_of_day,
    required this.max_tempCelsium_of_day,
    required this.localtime,
    required this.wind_kph,
    required this.wind_dir,
    required this.chance_of_rain,
    required this.date,
    required this.networkImage,
    required this.weatherCondition,
    required this.date_2th_day,
    required this.networkImage_2th_day,
    required this.tempCelsium_2th_day,
    required this.date_3th_day,
    required this.networkImage_3th_day,
    required this.tempCelsium_3th_day,
  });

  @override
  List<Object> get props => [
        city,
        country,
        current_tempCelsium,
        min_tempCelsium_of_day,
        max_tempCelsium_of_day,
        localtime,
        wind_kph,
        wind_dir,
        chance_of_rain,
        date,
        networkImage,
        weatherCondition,
        tempCelsium_2th_day,
        networkImage_2th_day,
        date_3th_day,
        tempCelsium_3th_day,
        networkImage_3th_day,
      ];
}
