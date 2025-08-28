import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/home.dart';
import 'package:weatherapp/Screens/searchcity.dart';
import 'package:weatherapp/Screens/weathertemp.dart';

void main() {
  runApp(const MyApp());
}


   class MyApp extends StatelessWidget {
     const MyApp({super.key});

     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         home:HomeScreen(),

       );
     }
   }


