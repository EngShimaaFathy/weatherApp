
import 'package:weatherapp/models/weather_model.dart';

class WeatherState{}
class InitialState extends WeatherState{}
class WeatherLoadState extends WeatherState{

  final WeatherModel weatherModel;

  WeatherLoadState(this.weatherModel);
}
class WeatherStateFailure extends WeatherState{}
