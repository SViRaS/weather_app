// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:weather/common/weather_constants.dart';
import 'package:weather/common/location.dart';
import 'package:weather/features/data/datasources/remote_data_source.dart';
import 'package:weather/features/data/models/weather_model.dart';
import 'package:weather/features/domain/entities/weather_entity.dart';
import 'package:weather/features/domain/repositories/weather_repository.dart';

class WeatherRepository implements AbstractWeatherRepository {

  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepository({required this.weatherRemoteDataSource});
  
  @override
  Future<WeatherEntity> getCurrentWeather(String? cityName, bool? isCity) async {
    try {
      final  result = await weatherRemoteDataSource.getCurrentWeather(cityName, isCity);
      return result;
    } catch (e) {
      
    }
    throw UnimplementedError();
  } 
}