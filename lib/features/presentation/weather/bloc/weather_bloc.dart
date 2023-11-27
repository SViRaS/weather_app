import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather/features/domain/usecases/get_weather.dart';

import '../../../domain/entities/weather_entity.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this.getWeather) : super(WeatherInitial()) {
    on<LoadWeatherData>(_onLoadWeatherData);
  }
  final GetCurrentWeather getWeather;

  void _onLoadWeatherData(
    LoadWeatherData event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());
    try {
      final weather = await getWeather.call(event.cityName, event.isCity);
      emit(WeatherLoaded(weather));
    } catch (e) {
      emit(WeatherLoadingFailure(e));
    }
  }
}
