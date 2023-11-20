part of 'weather_bloc.dart';

@immutable
sealed class WeatherState extends Equatable {
  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  WeatherLoaded(this.weatherModel);

  final WeatherEntity weatherModel;

  @override
  List<Object> get props => [weatherModel];
}

class WeatherLoadingFailure extends WeatherState {
  WeatherLoadingFailure(this.exception);

  final Object? exception;

  @override
  List<Object> get props => [exception!];
}
