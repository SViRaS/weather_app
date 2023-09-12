part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

class LoadWeatherData extends WeatherEvent {
    final String? cityName;
    final bool? isCity;

  LoadWeatherData( this.cityName, this.isCity);
}