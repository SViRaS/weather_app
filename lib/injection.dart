import 'package:get_it/get_it.dart';
import 'package:weather/features/data/datasources/remote_data_source.dart';
import 'package:weather/features/data/repositories/weather_repository.dart';
import 'package:weather/features/domain/repositories/weather_repository.dart';
import 'package:weather/features/domain/usecases/get_weather.dart';
import 'package:weather/features/presentation/weather/bloc/weather_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:weather/features/presentation/welcome/bloc/geolocation_bloc.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => WeatherBloc(locator()));

  locator.registerFactory(() => GeolocationBloc(locator()));

  locator.registerLazySingleton(() => GetCurrentWeather(locator()));

  locator.registerLazySingleton<AbstractWeatherRepository>(
      () => WeatherRepository(weatherRemoteDataSource: locator()));

  locator.registerLazySingleton(() => WeatherRemoteDataSource(client: locator()));

  locator.registerLazySingleton(() => http.Client());
}
