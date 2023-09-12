// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/features/presentation/pages/weather_screen/weather_screen.dart';
import 'package:weather/repositories/weather_repository/weather_repository.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void getLocationData() async {
    try {
      var weatherInfo = await WeatherRepository().getWeather();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return WeatherScreen(
          locationWeather: weatherInfo,
        );
      }));
    } catch (e) {
      // ignore: avoid_print
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/weather_image.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircularProgressIndicator(
          color: Colors.white70,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Please, wait',
          style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 20.sp),
        )
      ]),
    );
  }
}
