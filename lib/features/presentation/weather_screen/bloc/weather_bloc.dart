import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather/features/domain/repositories/weather_repository.dart';

import '../../../domain/entities/weather_entity.dart';
import '../../../domain/usecases/get_weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this.getWeather) : super(WeatherInitial()) {
    on<LoadWeatherData>(_onLoadWeatherData);
  }
  final AbstractWeatherRepository getWeather;

  void _onLoadWeatherData(
    LoadWeatherData event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());
    try {
      final weather = await getWeather.getWeather(
          cityName: event.cityName, isCity: event.isCity);
      emit(WeatherLoaded(weather));
    } catch (e) {
      emit(WeatherLoadingFailure(e));
    }
  }
}
