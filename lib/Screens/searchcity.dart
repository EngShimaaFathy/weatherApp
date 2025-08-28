

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/services/weather_Services.dart';
import 'package:weatherapp/Screens/weathertemp.dart';
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
          Column(
            children: [
              TextField(
                controller: _controller,
                decoration:InputDecoration(

                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),


             /*  onSubmitted: (value) async {


                 // WeatherModel weatherModel=await WeatherServices(Dio(),
                //  ).getCurrentWeather(cityName: value);

                 WeatherModel weatherModel=await WeatherServices(Dio()).getCurrentWeather(cityName: value);

                  print(weatherModel);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherTempurture(WeatherModel:weatherModel)));
                  print('edit finished');
                },*/

              ),
              ElevatedButton(onPressed: () {
                String fieldValue=_controller.text;
                //WeatherModel weatherModel=await WeatherServices(Dio()).getCurrentWeather(cityName: fieldValue);

                //print(weatherModel);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherTempurture()));
                print('edit finished');
              },
                  child: Text('search ')

              )
            ],
          ),

          ),

        ),
      ),
    );
  }
}
