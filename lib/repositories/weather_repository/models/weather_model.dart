// ignore_for_file: non_constant_identifier_names

class WeatherModel {
  String? city;
  String? country;
  double? current_tempCelsium;
  double? min_tempCelsium_of_day;
  double? max_tempCelsium_of_day;
  String? localtime;
  double? wind_kph;
  String? wind_dir;
  int? chance_of_rain;
  int? date;
  String? networkImage;
  String? weatherCondition;
  int? date_2th_day;
  double? tempCelsium_2th_day;
  String? networkImage_2th_day;
  int? date_3th_day;
  double? tempCelsium_3th_day;
  String? networkImage_3th_day;
  //  int? date_4th_day;
  // double? tempCelsium_4th_day;
  // String? networkImage_4th_day;
  // int? date_5th_day;
  // double? tempCelsium_5th_day;
  // String? networkImage_5th_day;
  // int? date_6th_day;
  // double? tempCelsium_6th_day;
  // String? networkImage_6th_day;
  // int? date_7th_day;
  // double? tempCelsium_7th_day;
  // String? networkImage_7th_day;
  // int? date_8th_day;
  // double? tempCelsium_8th_day;
  // String? networkImage_8th_day;
  // int? date_9th_day;
  // double? tempCelsium_9th_day;
  // String? networkImage_9th_day;


  WeatherModel(
      this.city,
      this.country,
      this.current_tempCelsium,
      this.min_tempCelsium_of_day,
      this.max_tempCelsium_of_day,
      this.localtime,
      this.wind_kph,
      this.wind_dir,
      this.chance_of_rain,
      this.date,
      this.networkImage,
      this.date_2th_day,
      this.networkImage_2th_day,
      this.tempCelsium_2th_day,
      this.date_3th_day,
      this.networkImage_3th_day,
      this.tempCelsium_3th_day,
      // this.date_4th_day,
      // this.networkImage_4th_day,
      // this.tempCelsium_4th_day,
      // this.date_5th_day,
      // this.networkImage_5th_day,
      // this.tempCelsium_5th_day,
      // this.date_6th_day,
      // this.networkImage_6th_day,
      // this.tempCelsium_6th_day,
      // this.date_7th_day,
      // this.networkImage_7th_day,
      // this.tempCelsium_7th_day,
      // this.date_8th_day,
      // this.networkImage_8th_day,
      // this.tempCelsium_8th_day,
      // this.date_9th_day,
      // this.networkImage_9th_day,
      // this.tempCelsium_9th_day,
      this.weatherCondition,
      );

  WeatherModel.fromJson(Map<String, dynamic> json) {
    city = json['location']['name'];
    country = json['location']['country'];
    current_tempCelsium = json['current']['temp_c'];
    min_tempCelsium_of_day = json['forecast']['forecastday'][0]['day']['mintemp_c'];
    max_tempCelsium_of_day = json['forecast']['forecastday'][0]['day']['maxtemp_c'];
    localtime = json['location']['localtime'];
    wind_kph = json['current']['wind_kph'];
    wind_dir = json['current']['wind_dir'];
    chance_of_rain = json['forecast']['forecastday'][0]['day']['daily_chance_of_rain'];
    date = json['location']['localtime_epoch'];
    networkImage = json['current']['condition']['icon'];
    weatherCondition = json['current']['condition']['text'];
    date_2th_day = json['forecast']['forecastday'][1]['date_epoch'];
    tempCelsium_2th_day = json['forecast']['forecastday'][1]['day']['avgtemp_c'];
    networkImage_2th_day = json['forecast']['forecastday'][1]['day']['condition']['icon'];
    date_3th_day = json['forecast']['forecastday'][2]['date_epoch'];
    tempCelsium_3th_day = json['forecast']['forecastday'][2]['day']['avgtemp_c'];
    networkImage_3th_day = json['forecast']['forecastday'][2]['day']['condition']['icon'];
    // date_4th_day = json['forecast']['forecastday'][3]['date_epoch'];
    // tempCelsium_4th_day = json['forecast']['forecastday'][3]['day']['avgtemp_c'];
    // networkImage_4th_day = json['forecast']['forecastday'][3]['day']['condition']['icon'];
    // date_5th_day = json['forecast']['forecastday'][4]['date_epoch'];
    // tempCelsium_5th_day = json['forecast']['forecastday'][4]['day']['avgtemp_c'];
    // networkImage_5th_day = json['forecast']['forecastday'][4]['day']['condition']['icon'];
    // date_6th_day = json['forecast']['forecastday'][5]['date_epoch'];
    // tempCelsium_6th_day = json['forecast']['forecastday'][5]['day']['avgtemp_c'];
    // networkImage_6th_day = json['forecast']['forecastday'][5]['day']['condition']['icon'];
    // date_6th_day = json['forecast']['forecastday'][6]['date_epoch'];
    // tempCelsium_6th_day = json['forecast']['forecastday'][6]['day']['avgtemp_c'];
    // networkImage_6th_day = json['forecast']['forecastday'][6]['day']['condition']['icon'];
    // date_7th_day = json['forecast']['forecastday'][7]['date_epoch'];
    // tempCelsium_7th_day = json['forecast']['forecastday'][7]['day']['avgtemp_c'];
    // networkImage_7th_day = json['forecast']['forecastday'][7]['day']['condition']['icon'];
    // date_8th_day = json['forecast']['forecastday'][8]['date_epoch'];
    // tempCelsium_8th_day = json['forecast']['forecastday'][8]['day']['avgtemp_c'];
    // networkImage_8th_day = json['forecast']['forecastday'][8]['day']['condition']['icon'];
    // date_9th_day = json['forecast']['forecastday'][9]['date_epoch'];
    // tempCelsium_9th_day = json['forecast']['forecastday'][9]['day']['avgtemp_c'];
    // networkImage_9th_day = json['forecast']['forecastday'][9]['day']['condition']['icon'];
  }
}
