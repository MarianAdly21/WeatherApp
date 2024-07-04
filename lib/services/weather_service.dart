import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "http://api.weatherapi.com/v1";
  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
        '$baseUrl/forecast.json?key=8a31ff0257c843aeb30110243240407&q=$cityName&days=10');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
