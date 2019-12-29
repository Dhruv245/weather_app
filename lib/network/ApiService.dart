import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'WeatherForecastJson.dart';

class ApiService{

  final String key = 'b59f799a9b6fca13dca9a6291c346aa7';
  final String city = "mumbai";

  String _getUrl(){
    return "http://api.apixu.com/v1/forecast.json?key="+key+"&q="+city+"&days=7";
  }

  Future<ForecastWeatherResponse> fetchPost() async {
//    throw Exception();
    final response = await http.get(_getUrl());

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ForecastWeatherResponse.fromJson(json.decode(response.body));
    } else if(response.statusCode == 401){
      throw Exception("Get you api key from https://www.apixu.com/ and paste it ApiService class");
    }else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load Api');
    }
  }
}