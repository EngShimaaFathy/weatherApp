

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cuibets/get_weather/get_weather_cubit.dart';
import 'package:weatherapp/services/weather_Services.dart';
import 'package:weatherapp/widgets/weathertemp.dart';
import '../models/weather_model.dart';

class SearchCity extends StatelessWidget {
   SearchCity({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search City ',style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Form(child:
          TextField(
            controller: _controller,
            decoration:InputDecoration(

              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),


           onSubmitted: (value) async {


             // WeatherModel weatherModel=await WeatherServices(Dio(),
            //  ).getCurrentWeather(cityName: value);

             WeatherModel weatherModel=await WeatherServices(Dio()).getCurrentWeather(cityName: value);

             var getWeatherCubit=BlocProvider.of<GetWeatherCubit>(context);
             getWeatherCubit.GetWeather(cityName: value);
              print("done");

              Navigator.pop(context);
              print('edit finished');
            },

          ),

          ),

        ),
      ),
    );
  }
}
