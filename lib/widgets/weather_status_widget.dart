import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherStatusWidget extends StatelessWidget {
  const WeatherStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        weatherModel.color,
        weatherModel.color[300]!,
        weatherModel.color[50]!,
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.name,
              style: const TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            Text(
              "updated at ${weatherModel.lastUpdateTime.hour} : ${weatherModel.lastUpdateTime.minute}",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${weatherModel.image}", height: 100),
                Text(
                  weatherModel.temp.round().toString(),
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text(
                      "Maxtemp: ${weatherModel.maxTemp.round()}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Mintemp: ${weatherModel.minTemp.round()}",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Text(
              weatherModel.condtion,
              style: const TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
