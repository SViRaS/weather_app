import 'package:weather/features/presentation/search_weather_screen/search_weather_screen.dart';

import '../features/presentation/weather_screen/weather_screen.dart';
import '../features/presentation/welcome_screen/welcome_screen.dart';


final routes = {
  '/': (context) => const WelcomeScreen(),
  '/weather_screen': (context) => const WeatherScreen(),
  '/search_weather_screen': (context) => const SearchWeatherScreen(),
};