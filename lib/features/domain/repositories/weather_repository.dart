import 'package:weather/features/domain/entities/weather_entity.dart';

 abstract class AbstractWeatherRepository {
  Future<WeatherEntity> getCurrentWeather(String? cityName, bool? isCity);
}