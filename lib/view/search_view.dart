import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text(
          "Search A City",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
               weatherModel = await WeatherService(Dio())
                  .getCurrentWeather(cityName: value);

              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              hintText: "Enter City Name",
              suffixIcon: Icon(Icons.search),
              labelText: "Search",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
