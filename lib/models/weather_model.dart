

class WeatherModel{

  final String cityName;
  final String lastdate;
  final String weatherCondition;
  final String temp;
  final String minTemp;
  final String maxTemp;
  final String image;

  WeatherModel({
    required this.cityName,
    required this.lastdate,
    required this.weatherCondition,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.image
  });

  factory WeatherModel.fromJson(json)
  {
    return WeatherModel(
        cityName:json["location"]["name"],
        lastdate: json["current"]["last_updated"],
        weatherCondition:json["current"]["condition"]["text"],
        temp: json["current"]["temp_c"],
        minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        image: json["current"]["condition"]["icon"],

    );
  }
}
