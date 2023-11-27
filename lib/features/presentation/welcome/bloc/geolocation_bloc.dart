import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/weather_entity.dart';
import '../../../domain/usecases/get_weather.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  GeolocationBloc(this.weatherRepository) : super(GeolocationInitial()) {
    on<DefinitionGeolocation>(_onDefinitionGeolocation);
  }

  final GetCurrentWeather weatherRepository;

  void _onDefinitionGeolocation(
    GeolocationEvent event,
    Emitter<GeolocationState> emit,
  ) async {
    final geolocationData = await weatherRepository.call(null, null);
    emit(GeolocationLoaded(geolocationData));
  }
}
