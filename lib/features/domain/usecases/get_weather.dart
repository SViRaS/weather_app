import '../entities/weather_entity.dart';
import '../repositories/weather_repository.dart';

class GetCurrentWeather {
  final AbstractWeatherRepository weatherRepository;

  GetCurrentWeather(this.weatherRepository);

  Future<WeatherEntity> call(String? cityName, bool? isCity) async {
    return await weatherRepository.getCurrentWeather(cityName, isCity);
  }
}
