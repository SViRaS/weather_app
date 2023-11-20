// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/features/domain/repositories/weather_repository.dart';

import '../../weather/view/view.dart';
import '../bloc/geolocation_bloc.dart';
import '../widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final geolocationBloc = GeolocationBloc(GetIt.I<AbstractWeatherRepository>());

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