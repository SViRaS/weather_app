// ignore_for_file: unnecessary_string_interpolations, prefer_typing_uninitialized_variables, non_constant_identifier_names, must_be_immutable\

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
import 'package:weather/features/data/repositories/weather_repository.dart';
import 'package:weather/features/domain/usecases/get_weather.dart';
import 'package:weather/injection.dart';
import '../../../data/datasources/remote_data_source.dart';
import '../bloc/weather_bloc.dart';
import 'package:weather/common/app_constants/resources_app.dart';

import '../widgets/widgets.dart';

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
  
  final weatherBloc = locator<WeatherBloc>();

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
                    var tappedName = await Navigator.pushNamed(
                        context, '/search_weather_screen');
                    if (tappedName != null) {
                      weatherBloc
                          .add(LoadWeatherData(tappedName as String?, true));
                    }
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/search_city.svg',
                    width: 32.w,
                    height: 32.h,
                  )),
            ],
          )),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        bloc: weatherBloc,
        builder: (context, state) {
          if (state is WeatherLoaded) {
            final weatherModel = state.weatherModel;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  MainCard(weatherModel),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text('Forecast for next days',
                      style: AppTextStyle().forecastForNextDaysText),
                  SizedBox(
                    height: 16.h,
                  ),
                  DayContainer(
                    weather_date: weatherModel.date_2th_day.toInt(),
                    weather_networkImage:
                        weatherModel.networkImage_2th_day.toString(),
                    weather_tempCelsium:
                        weatherModel.tempCelsium_2th_day.toString(),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DayContainer(
                    weather_date: weatherModel.date_3th_day.toInt(),
                    weather_networkImage:
                        weatherModel.networkImage_3th_day.toString(),
                    weather_tempCelsium:
                        weatherModel.tempCelsium_3th_day.toString(),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              ),
            );
          }
          if (state is WeatherLoadingFailure) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('City name not found',
                      style: AppTextStyle().cityNameNotFoundText),
                  GestureDetector(
                      onTap: () async {
                        var tappedName = await Navigator.pushNamed(
                            context, '/search_weather_screen');
                        if (tappedName != null) {
                          weatherBloc.add(
                              LoadWeatherData(tappedName as String?, true));
                        }
                      },
                      child: Text('Please enter the correct city name',
                          style: AppTextStyle().pleaseEnterCorrectName))
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
