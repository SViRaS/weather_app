part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherModel weatherModel;
  
   WeatherLoaded(this.weatherModel); 
}

class WeatherLoadingFailure extends WeatherState {
  final Object? exception;

  WeatherLoadingFailure(this.exception);
}


