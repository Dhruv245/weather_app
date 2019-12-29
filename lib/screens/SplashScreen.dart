import 'dart:async';

import 'package:flutter/material.dart';
import '../network/ApiService.dart';

import 'WeatherForecastWidget.dart';

ApiService apiService = ApiService();

class SplashScreen extends StatelessWidget {
  SplashScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Title', home: SplashStatefull());
  }
}

class SplashStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashStatefull> {
  SplashState() ;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  Timer _timer;

  void startTimer() {
    const oneSec = const Duration(seconds: 3);
    _timer = new Timer(
        oneSec,
        () => setState(() {
              onSuccess();
            }));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void onSuccess() {

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => WeatherForecastListWidget()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: FractionalOffset.center,
      child: CircularProgressIndicator(),
    ));
  }
}
