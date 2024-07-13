import 'package:flutter/material.dart';
import 'package:weather_app/view/search_view.dart';
import 'package:weather_app/view/weather_info_body.dart';
import 'package:weather_app/widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.blue,
        title: Text(
          "Weather App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const NoWeatherBody(),
    );
  }
}
