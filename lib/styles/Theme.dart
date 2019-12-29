import 'package:flutter/material.dart';
import '../styles/colors.dart';

final ThemeData errorScreenTheme = _buildShrineTheme();
final ThemeData weatherScreenTheme = buildWeatherForecastScreen();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: errorScreenColor,
    primaryColor: errorScreenColor,
    buttonColor: errorScreenColor,
    scaffoldBackgroundColor: errorScreenColor,
    cardColor: errorScreenColor,
    textSelectionColor: errorScreenColor,
    errorColor: errorScreenColor,
  );
}
ThemeData buildWeatherForecastScreen() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: weatherForecastBackground,
    primaryColor: weatherForecastBackground,
    buttonColor: weatherForecastBackground,
    scaffoldBackgroundColor: weatherForecastBackground,
    cardColor: weatherForecastBackground,
    textSelectionColor: weatherForecastBackground,
    errorColor: weatherForecastBackground,
  );
}