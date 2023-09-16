import 'package:weather/features/presentation/pages/search_weather_screen/search_weather_screen.dart';
import 'package:weather/features/presentation/pages/weather_screen/weather_screen.dart';
import 'package:weather/features/presentation/pages/welcome_screen/welcome_screen.dart';

final routes = {
  '/': (context) => const WelcomeScreen(),
  '/weather_screen': (context) => const WeatherScreen(),
  '/search_weather_screen': (context) => const SearchWeatherScreen(),
};