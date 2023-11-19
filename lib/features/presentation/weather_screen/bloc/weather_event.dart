part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadWeatherData extends WeatherEvent {
  LoadWeatherData(this.cityName, this.isCity);

  final String? cityName;
  final bool? isCity;

  @override
  List<Object> get props => [cityName!, isCity!];
}
