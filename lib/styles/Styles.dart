import 'package:flutter/material.dart';

final TextStyle weatherForecastStyle = _buildWeathereForecastStyle();
final TextStyle currentTempStyle = _buildCurrentTempStyle();
final TextStyle cityNameStyle = _buildCityStyle();
final TextStyle errorTextStyle = _buildErrorTextStyle();

TextStyle _buildWeathereForecastStyle() {
  return TextStyle(
      fontSize: 17.0, fontFamily: 'Roboto-Medium', color: Colors.black);
}

TextStyle _buildCurrentTempStyle() {
  return TextStyle(
      fontSize: 96.0, fontFamily: 'Roboto-Medium', color: Colors.white);
}

TextStyle _buildCityStyle() {
  return TextStyle(
      fontSize: 66.0,
      fontFamily: 'Roboto-Light',
      color: Colors.white,
      letterSpacing: 1.4);
}

TextStyle _buildErrorTextStyle() {
  return TextStyle(
      fontSize: 54.0, fontFamily: 'Roboto-Light', color: Colors.white);
}
