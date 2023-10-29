import 'package:flutter/material.dart';

class WeatherModel {
  final String name;
  final DateTime lastUpdateTime;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String? image;
  final String condtion;
  final MaterialColor? color;

  WeatherModel({
    required this.name,
    required this.lastUpdateTime,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.image,
    required this.condtion,
    required this.color,
  });

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      name: json["location"]["name"],
      lastUpdateTime: DateTime.parse(json["current"]["last_updated"]),
      temp: json["current"]["temp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      condtion: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      color: _getThemColor(
          json["forecast"]["forecastday"][0]["day"]["condition"]["text"]),
    );
  }

  static MaterialColor _getThemColor(String condtion) {
    switch (condtion) {
      case 'Sunny':
        return Colors.orange;
      case 'Clear':
        return Colors.yellow;
      case 'Partly cloudy':
        return Colors.blue;
      case 'Overcast':
        return Colors.blueGrey;
      case 'Mist':
        return Colors.indigo;
      case 'Patchy rain possible':
        return Colors.lightGreen;
      case 'Patchy snow possible':
        return Colors.lightBlue;
      case 'Patchy sleet possible':
        return Colors.cyan;
      case 'Patchy freezing drizzle possible':
        return Colors.teal;
      case 'Thundery outbreaks possible':
        return Colors.amber;
      case 'Blowing snow':
      case 'Blizzard':
      case 'Fog':
      case 'Freezing fog':
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
      case 'Ice pellets':
      case 'Cloudy':
        return Colors.grey;
      case 'Patchy light drizzle':
      case 'Light freezing rain':
      case 'Light sleet':
      case 'Patchy light snow':
      case 'Patchy moderate snow':
      case 'Patchy heavy snow':
      case 'Freezing drizzle':
      case 'Light sleet showers':
      case 'Light snow showers':
      case 'Patchy light snow with thunder':
        return Colors.lightBlue;
      case 'Light drizzle':
      case 'Moderate or heavy sleet':
      case 'Moderate or heavy freezing rain':
      case 'Light snow':
      case 'Moderate snow':
      case 'Heavy snow':
      case 'Heavy freezing drizzle':
      case 'Moderate or heavy sleet showers':
      case 'Moderate or heavy snow showers':
      case 'Moderate or heavy snow with thunder':
        return Colors.blue;
      case 'Patchy light rain':
        return Colors.lightGreen;
      case 'Light rain':
      case 'Moderate rain at times':
      case 'Moderate rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
      case 'Moderate or heavy rain shower':
      case 'Torrential rain shower':
      case 'Moderate or heavy rain with thunder':
        return Colors.green;
      case 'Light rain shower':
      case 'Patchy light rain with thunder':
        return Colors.lightGreen;
      default:
        return Colors.grey;
    }
  }
}
