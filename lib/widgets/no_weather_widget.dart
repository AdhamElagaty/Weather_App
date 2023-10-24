import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "There is no weather 😔 start",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        Center(
          child: Text(
            "searching now 🔍",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
