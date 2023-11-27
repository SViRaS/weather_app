// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:weather/features/data/repositories/weather_repository.dart';
import 'package:weather/injection.dart';

import '../../../data/datasources/remote_data_source.dart';
import '../../../domain/usecases/get_weather.dart';
import '../../weather/view/view.dart';
import '../bloc/geolocation_bloc.dart';
import '../widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final geolocationBloc = locator<GeolocationBloc>();

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
