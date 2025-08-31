import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/widgets/no_weather.dart';
import 'package:weatherapp/widgets/weathertemp.dart';
import 'package:weatherapp/cuibets/get_weather/get_weather_cubit.dart';
import 'package:weatherapp/cuibets/get_weather/get_weather_state.dart';
import 'package:weatherapp/models/weather_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //body: WeatherModel==null ?NoWeather():WeatherTempurture(),

      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if(state is InitialState) {
            return NoWeather();
          }else if(state is WeatherLoadState) {
            return WeatherTempurture(
              weatherModel: state.weatherModel,
            );
          }else
            {
              return Scaffold(
                body: Center(
                  child: Text('OOps there was an error  '),
                ),
              );
            }
 
        },
      ),
    );
  }
}
