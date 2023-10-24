import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/weather_status_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        backgroundColor: const Color(0xFF2d9bef),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const SearchView();
                }),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: const WeatherStatusWidget(),
    );
  }
}
