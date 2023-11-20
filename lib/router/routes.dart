import 'package:weather/features/presentation/search/view/search_weather_screen.dart';

import '../features/presentation/weather/view/view.dart';
import '../features/presentation/welcome/view/view.dart';


final routes = {
  '/': (context) => const WelcomeScreen(),
  '/weather_screen': (context) => const WeatherScreen(),
  '/search_weather_screen': (context) => const SearchWeatherScreen(),
};