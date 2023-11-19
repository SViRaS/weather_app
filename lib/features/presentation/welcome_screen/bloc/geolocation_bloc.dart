import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:weather/features/data/repositories/weather_repository.dart';

import '../../../domain/entities/weather_entity.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  GeolocationBloc(this.weatherRepository) : super(GeolocationInitial()) {
    on<DefinitionGeolocation>(_onDefinitionGeolocation);
  }
  final WeatherRepositoryImpl weatherRepository;
}

void _onDefinitionGeolocation(
  GeolocationEvent event,
  Emitter<GeolocationState> emit,
  ) async {
  final geolocationData = await WeatherRepositoryImpl().getWeather();
  emit(GeolocationLoaded(geolocationData));
}
