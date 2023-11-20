import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/features/presentation/weather_screen/bloc/weather_bloc.dart';
import 'package:weather/router/routes.dart';

import 'features/data/repositories/weather_repository.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocProvider(
        create: (context) => WeatherBloc(WeatherRepository()),
        child: MaterialApp(
          routes: routes,
          initialRoute: '/',
        ),
      ),
    );
  }
}
