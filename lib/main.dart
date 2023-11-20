import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/features/domain/repositories/weather_repository.dart';
import 'package:weather/weather_app.dart';

import 'features/data/repositories/weather_repository.dart';

void main() {
  GetIt.I.registerSingleton<AbstractWeatherRepository>(WeatherRepository());
  runApp(const WeatherApp());
}
