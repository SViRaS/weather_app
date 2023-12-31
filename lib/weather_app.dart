import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/router/routes.dart';

import 'features/presentation/weather/bloc/weather_bloc.dart';
import 'injection.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocProvider(
        create: (_) => locator<WeatherBloc>(),
        child: MaterialApp(
          routes: routes,
          initialRoute: '/',
        ),
      ),
    );
  }
}
