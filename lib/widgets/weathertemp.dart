import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cuibets/get_weather/get_weather_cubit.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherTempurture extends StatelessWidget {
  const WeatherTempurture({super.key, required WeatherModel weatherModel, });

 // final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    var weatherModel=BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Scaffold(

      appBar: AppBar(
        title: Text('Weather App ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      ),
      body: Container(

        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF6F00),
              Color(0xFFFFC107),
              Color(0xFFFFF8E1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(weatherModel.cityName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text(weatherModel.lastdate,style: TextStyle(fontSize: 20,),),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: NetworkImage('https:${weatherModel.image}'),width: 50,height: 60,),
               SizedBox(width: 20,),
                Text(weatherModel.temp,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 40,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Max temp :',style: TextStyle(fontSize: 20,),),
                        Text(weatherModel.maxTemp,style: TextStyle(fontSize: 20,),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Min temp :  ',style: TextStyle(fontSize: 20,),),
                        Text(weatherModel.minTemp,style: TextStyle(fontSize: 20,),),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text(weatherModel.weatherCondition,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
