// ignore_for_file: unnecessary_string_interpolations, prefer_typing_uninitialized_variables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather/features/presentation/pages/search_weather_screen/search_weather_screen.dart';
import 'package:weather/features/presentation/pages/weather_screen/widgets/widgets.dart';
import '../../../../repositories/weather_repository/weather_repository.dart';
import 'bloc/weather_bloc.dart';
import 'package:weather/features/resources/app_constants/resources_app.dart';

class WeatherScreen extends StatefulWidget {
  final locationWeather;

  const WeatherScreen({
    super.key,
    this.locationWeather,
  });

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final weatherBloc = WeatherBloc(WeatherRepository());

  @override
  void initState() {
    super.initState();
    if (widget.locationWeather != null) {
      weatherBloc.add(LoadWeatherData(null, false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbodyColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(66.h),
          child: AppBar(
            backgroundColor: AppColors.appbarColor,
            title: BlocBuilder<WeatherBloc, WeatherState>(
              bloc: weatherBloc,
              builder: (context, state) {
                if (state is WeatherLoaded) {
                  return AppBarText(state.weatherModel);
                }
                return const CircularProgressIndicator(
                  color: Colors.transparent,
                );
              },
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    weatherBloc.add(LoadWeatherData(null, false));
                  });
                },
                icon: SvgPicture.asset(
                  'assets/icons/my_location.svg',
                  width: 32.w,
                  height: 32.h,
                )),
            actions: [
              IconButton(
                  onPressed: () async {
                    var tappedName =
                        await Navigator.pushNamed(context, '/search_weather_screen');

                    if (tappedName != null) {
                      weatherBloc.add(LoadWeatherData(tappedName as String?, true));
                    }
                  },
                  //
                  icon: SvgPicture.asset(
                    'assets/icons/search_city.svg',
                    width: 32.w,
                    height: 32.h,
                  ))
            ],
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            BlocBuilder<WeatherBloc, WeatherState>(
              bloc: weatherBloc,
              builder: (context, state) {
                if (state is WeatherLoaded) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MainCard(state.weatherModel),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        'Forecast for next days',
                        style: AppTextStyle().forecastForNextDaysText
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      DayContainer(
                        weather_date: state.weatherModel.date_2th_day!.toInt(),
                        weather_networkImage: state.weatherModel.networkImage_2th_day.toString(),
                        weather_tempCelsium: state.weatherModel.tempCelsium_2th_day.toString(),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      DayContainer(
                        weather_date: state.weatherModel.date_3th_day!.toInt(),
                        weather_networkImage: state.weatherModel.networkImage_3th_day.toString(),
                        weather_tempCelsium: state.weatherModel.tempCelsium_3th_day.toString(),
                      ),
                        SizedBox(
                        height: 8.h,
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
