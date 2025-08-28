import 'package:flutter/material.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherTempurture extends StatelessWidget {
  const WeatherTempurture({super.key, });

  @override
  Widget build(BuildContext context) {
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
            Text('London ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('updated at 10:15 ',style: TextStyle(fontSize: 20,),),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: NetworkImage('https://png.pngtree.com/png-vector/20220908/ourmid/pngtree-cute-sunny-png-image_6143560.png',),width: 50,height: 60,),
               SizedBox(width: 20,),
                Text('18.0 ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 40,),
                Column(
                  children: [
                    Text('Max temp :24 ',style: TextStyle(fontSize: 20,),),
                    Text('Min temp : 12 ',style: TextStyle(fontSize: 20,),),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text('Sunny ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
