part of 'geolocation_bloc.dart';

sealed class GeolocationState extends Equatable {
  @override
  List<Object> get props => [];
}

final class GeolocationInitial extends GeolocationState {}

class GeolocationLoading extends GeolocationState {}

class GeolocationLoaded extends GeolocationState {
  GeolocationLoaded(this.locationWeather);
  final WeatherEntity locationWeather;

  @override
  List<Object> get props => [locationWeather];
}
