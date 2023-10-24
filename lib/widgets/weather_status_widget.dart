import 'package:flutter/material.dart';

class WeatherStatusWidget extends StatelessWidget {
  const WeatherStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Alexandria",
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          ),
          const Text(
            "updated at 23:46",
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/cloudy.png", height: 100),
              const Text(
                "17",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Column(
                children: [
                  Text(
                    "Maxtemp: 24",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Mintemp: 16",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
          const Text(
            "Light Rain",
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
