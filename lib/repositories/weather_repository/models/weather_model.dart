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
  int? date_2;
  double? tempCelsium_2;
  String? networkImage_2;
  int? date_3;
  double? tempCelsium_3;
  String? networkImage_3;
  int? date_4;
  double? tempCelsium_4;
  String? networkImage_4;
  int? date_5;
  double? tempCelsium_5;
  String? networkImage_5;
  int? date_6;
  double? tempCelsium_6;
  String? networkImage_6;
  int? date_7;
  double? tempCelsium_7;
  String? networkImage_7;
  int? date_8;
  double? tempCelsium_8;
  String? networkImage_8;
  int? date_9;
  double? tempCelsium_9;
  String? networkImage_9;


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
      this.date_2,
      this.networkImage_2,
      this.tempCelsium_2,
      this.date_3,
      this.networkImage_3,
      this.tempCelsium_3,
      this.date_4,
      this.networkImage_4,
      this.tempCelsium_4,
      this.date_5,
      this.networkImage_5,
      this.tempCelsium_5,
      this.date_6,
      this.networkImage_6,
      this.tempCelsium_6,
      this.date_7,
      this.networkImage_7,
      this.tempCelsium_7,
      this.date_8,
      this.networkImage_8,
      this.tempCelsium_8,
      this.date_9,
      this.networkImage_9,
      this.tempCelsium_9,
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
    date_2 = json['forecast']['forecastday'][1]['date_epoch'];
    tempCelsium_2 = json['forecast']['forecastday'][1]['day']['avgtemp_c'];
    networkImage_2 = json['forecast']['forecastday'][1]['day']['condition']['icon'];
    date_3 = json['forecast']['forecastday'][2]['date_epoch'];
    tempCelsium_3 = json['forecast']['forecastday'][2]['day']['avgtemp_c'];
    networkImage_3 = json['forecast']['forecastday'][2]['day']['condition']['icon'];
    date_4 = json['forecast']['forecastday'][3]['date_epoch'];
    tempCelsium_4 = json['forecast']['forecastday'][3]['day']['avgtemp_c'];
    networkImage_4 = json['forecast']['forecastday'][3]['day']['condition']['icon'];
    date_5 = json['forecast']['forecastday'][4]['date_epoch'];
    tempCelsium_5 = json['forecast']['forecastday'][4]['day']['avgtemp_c'];
    networkImage_5 = json['forecast']['forecastday'][4]['day']['condition']['icon'];
    date_6 = json['forecast']['forecastday'][5]['date_epoch'];
    tempCelsium_6 = json['forecast']['forecastday'][5]['day']['avgtemp_c'];
    networkImage_6 = json['forecast']['forecastday'][5]['day']['condition']['icon'];
    date_6 = json['forecast']['forecastday'][6]['date_epoch'];
    tempCelsium_6 = json['forecast']['forecastday'][6]['day']['avgtemp_c'];
    networkImage_6 = json['forecast']['forecastday'][6]['day']['condition']['icon'];
    date_7 = json['forecast']['forecastday'][7]['date_epoch'];
    tempCelsium_7 = json['forecast']['forecastday'][7]['day']['avgtemp_c'];
    networkImage_7 = json['forecast']['forecastday'][7]['day']['condition']['icon'];
    date_8 = json['forecast']['forecastday'][8]['date_epoch'];
    tempCelsium_8 = json['forecast']['forecastday'][8]['day']['avgtemp_c'];
    networkImage_8 = json['forecast']['forecastday'][8]['day']['condition']['icon'];
    date_9 = json['forecast']['forecastday'][9]['date_epoch'];
    tempCelsium_9 = json['forecast']['forecastday'][9]['day']['avgtemp_c'];
    networkImage_9 = json['forecast']['forecastday'][9]['day']['condition']['icon'];
  }
}
