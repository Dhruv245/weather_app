import 'package:flutter/material.dart';
import '../Util.dart';
import '../bloc/WeatherBloc.dart';
import '../network/WeatherForecastJson.dart';
import '../screens/ErrorScreen.dart';
import '../styles/Styles.dart';
import '../styles/Theme.dart';
import '../styles/colors.dart';

class WeatherForecastWidget extends StatelessWidget {
  WeatherForecastWidget();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast for this week',
      theme: weatherScreenTheme,
      home: WeatherForecastListWidget(),
    );
  }
}

class WeatherForecastListWidget extends StatefulWidget {
  WeatherForecastListWidget();

  @override
  State<StatefulWidget> createState() {
    return WeatherState();
  }
}

class WeatherState extends State<WeatherForecastListWidget> {
  WeatherBloc bloc = new WeatherBloc();

  WeatherState();

  @override
  void initState() {
    _fetchWeatherData(null);
    super.initState();
  }

  void _fetchWeatherData(String str) {
    bloc.fetchWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: weatherForecastBackground,
            alignment: FractionalOffset.center,
            child: new StreamBuilder(
                stream: bloc.fetchData,
                builder: (context, AsyncSnapshot<Event> e) {
                  if (e.hasData) {
                    var event = e.data;
                    if (event is SuccessEvent) {
                      var response = event.resp as ForecastWeatherResponse;
                      String cityName = response.location.getName();
                      String currentDeg =
                          response.current.tempC.toInt().toString();
                      List<Forecastday> list = response.forecast.forecastday;
                      return Column(
                        children: <Widget>[
                          Container(
                              margin: const EdgeInsets.only(top: 96.0),
                              child: Text(
                                currentDeg,
                                textAlign: TextAlign.center,
                                style: currentTempStyle,
                              )),
                          Container(
                              margin: const EdgeInsets.only(bottom: 62.0),
                              child: Text(
                                cityName,
                                textAlign: TextAlign.center,
                                style: cityNameStyle,
                              )),
                          Container(
                              child: Expanded(
                                  child: ListView.builder(
                                      itemCount: list.length,
                                      itemBuilder: (context, index) {
                                        return SizedBox(
                                            height: 56.0,
                                            child: Container(
                                                padding: EdgeInsets.all(16.0),
                                                color: Colors.white,
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          child: getRowWidget(
                                                              Util.getDay(
                                                                  list[index]
                                                                      .date))),
                                                      Container(
                                                          child: getRowWidget(
                                                              list[index]
                                                                  .day
                                                                  .avgtempC
                                                                  .toInt()
                                                                  .toString()))
                                                    ])));
                                      })))
                        ],
                      );
                    } else if (event is ErrorEvent) {
                      return ErrorScreen(_fetchWeatherData, event.error.msg);
                    } else {
                      return CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(errorScreenColor),
                      );
                    }
                  } else {
                    return CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(errorScreenColor),
                    );
                  }
                })));
  }

  Widget getRowWidget(String s) {
    return Text(s, textAlign: TextAlign.center, style: weatherForecastStyle);
  }
}
