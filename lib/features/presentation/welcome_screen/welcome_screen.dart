// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/presentation/welcome_screen/widgets/page_widget.dart';
import 'package:weather/features/data/repositories/weather_repository.dart';

import '../weather_screen/weather_screen.dart';
import 'bloc/geolocation_bloc.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final geolocationBloc = GeolocationBloc(WeatherRepositoryImpl());

  @override
  void initState() {
    super.initState();
    geolocationBloc.add(DefinitionGeolocation());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: geolocationBloc,
        builder: (context, state) {
          if (state is GeolocationLoaded) {
            return WeatherScreen(
              locationWeather: state.locationWeather,
            );
          }
          return const PageWidget();
        });
  }
}
