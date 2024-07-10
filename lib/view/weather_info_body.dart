import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "cairo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            "Update at 23:70",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Image.asset('assets/clear.png'),
              Spacer(),
              Text(
                "12",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "maxTamp:70",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "minTamp:70",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Light Rain",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
