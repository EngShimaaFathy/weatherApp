import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Screens/home.dart';
import 'package:weatherapp/Screens/searchcity.dart';
import 'package:weatherapp/widgets/weathertemp.dart';
import 'package:weatherapp/cuibets/get_weather/get_weather_cubit.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),

      ),
    );
  }
}


