import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseURL = "http://api.weatherapi.com/v1";
  final String apiKey = "0ba1e813d68e48789fd110105232410";

  WeatherService({required this.dio});

  Future<WeatherModel> getService({required String country}) async {
    try {
      var response = await dio.get(
          "$baseURL/forecast.json?key=$apiKey&q=$country&days=1&aqi=no&alerts=no");
      WeatherModel weather = WeatherModel.fromjson(response.data);
      return weather;
    } on DioException catch (e) {
      final String errMessage = e.response?.data["error"]["message"] ??
          "oops there was an error, try later!";
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there was an error, try later!");
    }
  }
}
