// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:weather_app/features/resources/weather_constants.dart';
import 'package:weather_app/features/resources/location.dart';
import 'package:weather_app/repositories/weather_repository/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel> getWeather(
      {String? cityName, bool? isCity}) async {
    
    Location location = Location();
    await location.getCurrentLocation();
    
    var latitude = location.latitude.toString();
    var longtitude = location.longtitude.toString();

    final String? cityData;

    if(isCity == true) {
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
