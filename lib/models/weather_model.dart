class WeatherModel {
  final String name;
  final String lastUpdateTime;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String? image;
  final String condtion;

  WeatherModel(
      {required this.name,
      required this.lastUpdateTime,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.image,
      required this.condtion});

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
        name: json["location"]["name"],
        lastUpdateTime: json["current"]["last_updated"],
        temp: json["current"]["temp_c"],
        maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
        condtion: json["forecast"]["forecastday"][0]["day"]["condition"]
            ["text"]);
  }
}
