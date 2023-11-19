import 'package:weather/features/data/repositories/weather_repository.dart';

import '../entities/weather_entity.dart';

class GetWeather {
  final WeatherRepositoryImpl weatherRepository;

  GetWeather(this.weatherRepository);

  Future<WeatherEntity> call() async {
    return await weatherRepository.getWeather();
  }
}
