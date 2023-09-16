import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather/repositories/weather_repository/weather_repository.dart';

import '../../../../../repositories/weather_repository/models/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this.weatherRepository) : super(WeatherInitial()) {
    on<LoadWeatherData>((
      event,
      emit,
    ) async {
      try {
        final weather = await WeatherRepository()
            .getWeather(cityName: event.cityName, isCity: event.isCity);
        emit(WeatherLoaded(weather));
      } catch (e) {
        emit(WeatherLoadingFailure(e));
      }
    });
  }
  final WeatherRepository weatherRepository;
}
