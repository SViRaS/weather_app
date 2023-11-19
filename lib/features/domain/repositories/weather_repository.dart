import 'package:weather/features/domain/entities/weather_entity.dart';

abstract class AbstractWeatherRepository {
  Future<WeatherEntity> getWeather({String? cityName, bool? isCity});
}