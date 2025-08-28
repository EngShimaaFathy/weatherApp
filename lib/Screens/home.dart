

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/searchcity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  /*void initState(){
    super.initState();

   Timer(Duration(seconds: 2),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SearchCity())));
} */



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather App',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      actions: [
        IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SearchCity()));
        }, icon: Icon(Icons.search))
      ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('There is no weather start searching now ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
              maxLines: 2,
              ),
              Icon(Icons.search)
            ],
          ),
        ],
      ),
    );
  }
}
