part of 'geolocation_bloc.dart';

@immutable
sealed class GeolocationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class DefinitionGeolocation extends GeolocationEvent {}
