part of 'geolocation_bloc.dart';

@immutable
sealed class GeolocationState {}

final class GeolocationInitial extends GeolocationState {}

class GeolocationLoading extends GeolocationState {}

class GeolocationLoaded extends GeolocationState {
  final WeatherModel locationWeather;

  GeolocationLoaded(this.locationWeather);
}