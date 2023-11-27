import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:weather/router/routes.dart';

import 'features/data/datasources/remote_data_source.dart';
import 'features/data/repositories/weather_repository.dart';
import 'features/domain/usecases/get_weather.dart';
import 'features/presentation/weather/bloc/weather_bloc.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocProvider(
        create: (_) => WeatherBloc(GetCurrentWeather(WeatherRepository(weatherRemoteDataSource: WeatherRemoteDataSource(client: Client())))),
        child: MaterialApp(
          routes: routes,
          initialRoute: '/',
        ),
      ),
    );
  }
}
