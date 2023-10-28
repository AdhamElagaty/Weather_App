import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(InitialState());
  late WeatherModel weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherService(dio: Dio()).getService(country: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(NoWeatherState());
    }
  }
}
