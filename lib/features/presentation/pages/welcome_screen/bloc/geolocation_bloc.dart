import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather/repositories/weather_repository/weather_repository.dart';

import '../../../../../repositories/weather_repository/models/weather_model.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  GeolocationBloc(this.weatherRepository) : super(GeolocationInitial()) {
    on<DefinitionGeolocation>((event, emit) async {
      final weatherInfo = await WeatherRepository().getWeather();
      emit(GeolocationLoaded(weatherInfo));
    });
  }
  final WeatherRepository weatherRepository;
}
