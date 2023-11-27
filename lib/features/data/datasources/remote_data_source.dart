import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../common/location.dart';
import '../../../common/weather_constants.dart';
import '../models/weather_model.dart';
import 'package:http/http.dart' as http;

abstract class AbstractWeatherRemoteDataSource {
  Future<WeatherModel> getCurrentWeather(String? cityName, bool? isCity);
}

class WeatherRemoteDataSource extends AbstractWeatherRemoteDataSource {
  final http.Client client;

  WeatherRemoteDataSource({required this.client});

  @override
  Future<WeatherModel> getCurrentWeather(String? cityName, bool? isCity) async {
    Location location = Location();
    await location.getCurrentLocation();

    var latitude = location.latitude.toString();
    var longtitude = location.longtitude.toString();

    final String? cityData;

    if (isCity == true) {
      cityData = cityName;
    } else {
      cityData = '$latitude,$longtitude';
    }

    var uri = Uri.parse(
        '${WeatherConstants.weather_ID}?key=${WeatherConstants.weather_KEY}&q=$cityData&days=10&aqi=no&alerts=no');

    var response = await http.get(uri);
    debugPrint(response.body);

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      return Future.error('Error response');
    }
  }
}
