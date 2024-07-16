import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style:const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            "Update at ${weatherModel.date.hour}:${weatherModel.date.minute}",
            style:const TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Image.network("https:${weatherModel.image!}"),
             const Spacer(),
              Text(
                weatherModel.temp.toString(),
                style:const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
             const Spacer(),
              Column(
                children: [
                  Text(
                    "maxTamp:${weatherModel.maxTemp.round()}",
                    style:const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "minTamp:${weatherModel.minTemp.round()}",
                    style:const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            weatherModel.weatherState,
            style:const TextStyle(
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
