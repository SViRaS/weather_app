// ignore_for_file: non_constant_identifier_names, must_be_immutable
import 'package:weather/features/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel({
    required city,
    required country,
    required current_tempCelsium,
    required min_tempCelsium_of_day,
    required max_tempCelsium_of_day,
    required localtime,
    required wind_kph,
    required wind_dir,
    required chance_of_rain,
    required date,
    required networkImage,
    required weatherCondition,
    required date_2th_day,
    required networkImage_2th_day,
    required tempCelsium_2th_day,
    required date_3th_day,
    required networkImage_3th_day,
    required tempCelsium_3th_day,
  }) : super(
            city: city,
            country: country,
            current_tempCelsium: current_tempCelsium,
            min_tempCelsium_of_day: min_tempCelsium_of_day,
            max_tempCelsium_of_day: max_tempCelsium_of_day,
            localtime: localtime,
            wind_kph: wind_kph,
            wind_dir: wind_dir,
            chance_of_rain: chance_of_rain,
            date: date,
            networkImage: networkImage,
            weatherCondition: weatherCondition,
            date_2th_day: date_2th_day,
            networkImage_2th_day: networkImage_2th_day,
            tempCelsium_2th_day: tempCelsium_2th_day,
            date_3th_day: date_3th_day,
            networkImage_3th_day: networkImage_3th_day,
            tempCelsium_3th_day: tempCelsium_3th_day);

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json['location']['name'],
      country: json['location']['country'],
      current_tempCelsium: json['current']['temp_c'],
      min_tempCelsium_of_day: json['forecast']['forecastday'][0]['day']
          ['mintemp_c'],
      max_tempCelsium_of_day: json['forecast']['forecastday'][0]['day']
          ['maxtemp_c'],
      localtime: json['location']['localtime'],
      wind_kph: json['current']['wind_kph'],
      wind_dir: json['current']['wind_dir'],
      chance_of_rain: json['forecast']['forecastday'][0]['day']
          ['daily_chance_of_rain'],
      date: json['location']['localtime_epoch'],
      networkImage: json['current']['condition']['icon'],
      weatherCondition: json['current']['condition']['text'],
      date_2th_day: json['forecast']['forecastday'][1]['date_epoch'],
      tempCelsium_2th_day: json['forecast']['forecastday'][1]['day']
          ['avgtemp_c'],
      networkImage_2th_day: json['forecast']['forecastday'][1]['day']
          ['condition']['icon'],
      date_3th_day: json['forecast']['forecastday'][2]['date_epoch'],
      tempCelsium_3th_day: json['forecast']['forecastday'][2]['day']
          ['avgtemp_c'],
      networkImage_3th_day: json['forecast']['forecastday'][2]['day']
          ['condition']['icon'],
    );
  }
}
