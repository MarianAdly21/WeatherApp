import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/view/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child:Builder(
        builder: (context) =>MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: getThemeColor(
                    BlocProvider.of<GetWeatherCubit>(context)
                        .weatherModel
                        ?.weatherState,
                  ),
                ),
                home: const HomeView(),
              ),
      ),
    );
  }

  
}



MaterialColor getThemeColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }
    switch (condition) {
      case 'Sunny':
        return Colors.yellow;
      case 'Clear':
        return Colors.blue;
      case 'Partly cloudy':
        return Colors.blueGrey;
      case 'Cloudy':
        return Colors.grey;
      case 'Overcast':
      case 'Mist':
        return Colors.blueGrey;
      case 'Patchy rain possible':
      case 'Light rain':
      case 'Moderate rain at times':
      case 'Moderate rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
        return Colors.blue;
      case 'Patchy snow possible':
      case 'Light snow':
      case 'Moderate snow':
      case 'Heavy snow':
      case 'Fog':
      case 'Freezing fog':
        return Colors.grey;
      case 'Patchy light drizzle':
      case 'Light drizzle':
      case 'Freezing drizzle':
      case 'Heavy freezing drizzle':
      case 'Light freezing rain':
      case 'Moderate or heavy freezing rain':
        return Colors.blueGrey;
      case 'Light sleet':
      case 'Moderate or heavy sleet':
        return Colors.blueGrey;
      case 'Ice pellets':
        return Colors.cyan;
      case 'Light rain shower':
      case 'Moderate or heavy rain shower':
      case 'Torrential rain shower':
      case 'Light snow showers':
      case 'Moderate or heavy snow showers':
        return Colors.blue;
      case 'Light sleet showers':
      case 'Moderate or heavy sleet showers':
        return Colors.blueGrey;
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
        return Colors.cyan;
      case 'Patchy light rain with thunder':
      case 'Moderate or heavy rain with thunder':
        return Colors.deepOrange;
      case 'Patchy light snow with thunder':
      case 'Moderate or heavy snow with thunder':
      case 'Patchy rain nearby':
        return Colors.deepPurple;
      default:
        return Colors.blue;
    }
  }
