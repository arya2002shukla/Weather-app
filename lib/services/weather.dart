import 'package:clima/services/networking.dart';
import 'package:clima/services/location.dart';
const apikey="4cf088fa5cec8cb53ef655290bd69a9a";
const openweathermapurl ="https://API.openweathermap.org/data/2.5/weather";
class WeatherModel {
  String getWeatherIcon(int condition) {

    Future<dynamic>getlocationweather()async{
      double latitude;
      double longitude;

      Location location = Location();
      await location.getcurrentlocation();
      latitude = location.latitude;
      longitude = location.longitude;
      print("latitude : $latitude");
      print("longitude: $longitude");
      NetworkPage networkhelp = NetworkPage(
          url: '$openweathermapurl?lat=$latitude&lon=$longitude&appid=$apikey&units=metric');
      var weatherdata = await networkhelp.getdata();
      return weatherdata;
    }
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
