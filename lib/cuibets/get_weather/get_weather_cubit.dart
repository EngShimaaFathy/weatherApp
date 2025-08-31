
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cuibets/get_weather/get_weather_state.dart';

import '../../models/weather_model.dart';
import '../../services/weather_Services.dart';

class GetWeatherCubit extends Cubit<WeatherState>
{
  GetWeatherCubit():super(InitialState());

  late WeatherModel weatherModel;

  GetWeather({required String cityName})async
  {
    try {
      WeatherModel weatherModel = await WeatherServices(
          Dio()).getCurrentWeather(cityName: cityName);

      emit(WeatherLoadState(weatherModel));
    }catch(e)
    {
      emit(WeatherStateFailure());
    }
  }

}