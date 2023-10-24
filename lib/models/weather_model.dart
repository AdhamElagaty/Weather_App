class WeatherModel {
  final String name;
  final String lastUpdate;
  final int temp;
  final int maxTemp;
  final int minTemp;
  final String? image;
  final String condtion;

  WeatherModel({required this.name, required this.lastUpdate, required this.temp, required this.maxTemp, required this.minTemp, required this.image, required this.condtion});

  factory WeatherModel.fromjson(json){
    return WeatherModel(name: name, lastUpdate: lastUpdate, temp: temp, maxTemp: maxTemp, minTemp: minTemp, image: image, condtion: condtion,)
  }

}
