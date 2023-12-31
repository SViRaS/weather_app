import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather/common/app_constants/resources_app.dart';

class SearchWeatherScreen extends StatefulWidget {
  const SearchWeatherScreen({Key? key}) : super(key: key);

  @override
  State<SearchWeatherScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<SearchWeatherScreen> {
  final TextEditingController textController = TextEditingController();

  String get _text => textController.text;

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbodyColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66.h),
        child: AppBar(
          backgroundColor: AppColors.appbarColor,
          title: Text(
            'Search City',
            style: AppTextStyle().appBarText,
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                'assets/icons/arrow_left.svg',
                width: 32.w,
                height: 32.h,
              )),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            TextField(
                controller: textController,
                keyboardType: TextInputType.text,
                style: AppTextStyle().textFieldText,
                textCapitalization: TextCapitalization.sentences,
                decoration: AppDecorations().textFieldDecoration),
            SizedBox(
              height: 36.h,
            ),
            TextButton(
                onPressed: () {
                  return Navigator.of(context).pop(_text);
                },
                child: Text('Go to the forecast',
                    style: AppTextStyle().goToTheForecastText))
          ],
        ),
      ),
    );
  }
}
