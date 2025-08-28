

import 'package:dio/dio.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherServices{

  final Dio dio;

  WeatherServices(this.dio);
  final String baseUrl='http://api.weatherapi.com/v1';
  final String apiKey='01f6fc964d3946f2a6e225201252608&q';

  Future<WeatherModel> getCurrentWeather( {required String cityName}) async{
       Response response = await dio.get(
           '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1'
       );
       if(response.statusCode==200) {
         WeatherModel weatherModel = WeatherModel.fromJson(response.data);

         return weatherModel;
       }else{

         final String errorMsg=response.data["error"]["message"];
         throw Exception(errorMsg);

       }

}
}