import 'package:weather/features/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<WeatherEntity> getWeather();
}