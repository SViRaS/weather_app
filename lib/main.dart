import 'package:flutter/material.dart';
import 'package:weather/weather_app.dart';

import 'injection.dart';

void main() {
  setupLocator();
  runApp(const WeatherApp());
}
