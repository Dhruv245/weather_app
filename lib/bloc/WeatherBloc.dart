import 'dart:async';

import '../network/ApiService.dart';
import 'package:rxdart/rxdart.dart';

class WeatherBloc {
  PublishSubject<Event> weatherSubject = new PublishSubject<Event>();
  ApiService apiService = new ApiService();

  Observable<Event> get fetchData => weatherSubject.stream;

  static final WeatherBloc _bloc = new WeatherBloc._internal();

  factory WeatherBloc() {
    return _bloc;
  }

  WeatherBloc._internal();

  Future<void> fetchWeatherData() async {

    return new Future(() => callapi());
  }

  void callapi() async {
    weatherSubject.sink.add(new LoadingEvent(true));
    await apiService
        .fetchPost()
        .then((data) => weatherSubject.sink.add(new SuccessEvent(data)))
        .catchError((onError) => weatherSubject.sink
            .add(new ErrorEvent(new Error(onError.toString()))));
  }

  void onDispose() {
    weatherSubject.close();
  }
}

class Event {}

class LoadingEvent extends Event {
  bool isLoading;

  LoadingEvent(this.isLoading);
}

class SuccessEvent extends Event {
  dynamic resp;

  SuccessEvent(this.resp);
}

class ErrorEvent extends Event {
  Error error;

  ErrorEvent(this.error);
}

class Error {
  String msg;

  Error(this.msg);
}
