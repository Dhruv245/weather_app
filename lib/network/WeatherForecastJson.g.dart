

part of 'WeatherForecastJson.dart';


Astro _$AstroFromJson(Map<String, dynamic> json) {
  return Astro()
    ..sunrise = json['sunrise'] as String
    ..sunset = json['sunset'] as String
    ..moonrise = json['moonrise'] as String
    ..moonset = json['moonset'] as String
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return Condition()
    ..text = json['text'] as String
    ..icon = json['icon'] as String
    ..code = json['code'] as int
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}

Condition_ _$Condition_FromJson(Map<String, dynamic> json) {
  return Condition_()
    ..text = json['text'] as String
    ..icon = json['icon'] as String
    ..code = json['code'] as int
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return Current()
    ..lastUpdatedEpoch = json['last_updated_epoch'] as int
    ..lastUpdated = json['last_updated'] as String
    ..tempC = (json['temp_c'] as num)?.toDouble()
    ..tempF = (json['temp_f'] as num)?.toDouble()
    ..isDay = json['is_day'] as int
    ..condition = json['condition'] == null
        ? null
        : Condition.fromJson(json['condition'] as Map<String, dynamic>)
    ..windMph = (json['wind_mph'] as num)?.toDouble()
    ..windKph = (json['wind_kph'] as num)?.toDouble()
    ..windDegree = json['wind_degree'] as int
    ..windDir = json['wind_dir'] as String
    ..pressureMb = (json['pressure_mb'] as num)?.toDouble()
    ..pressureIn = (json['pressure_in'] as num)?.toDouble()
    ..precipMm = (json['precip_mm'] as num)?.toDouble()
    ..precipIn = (json['precip_in'] as num)?.toDouble()
    ..humidity = json['humidity'] as int
    ..cloud = json['cloud'] as int
    ..feelslikeC = (json['feelslike_c'] as num)?.toDouble()
    ..feelslikeF = (json['feelslike_f'] as num)?.toDouble()
    ..visKm = (json['vis_km'] as num)?.toDouble()
    ..visMiles = (json['vis_miles'] as num)?.toDouble()
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return Day()
    ..maxtempC = (json['maxtemp_c'] as num)?.toDouble()
    ..maxtempF = (json['maxtemp_f'] as num)?.toDouble()
    ..mintempC = (json['mintemp_c'] as num)?.toDouble()
    ..mintempF = (json['mintemp_f'] as num)?.toDouble()
    ..avgtempC = (json['avgtemp_c'] as num)?.toDouble()
    ..avgtempF = (json['avgtemp_f'] as num)?.toDouble()
    ..maxwindMph = (json['maxwindMph'] as num)?.toDouble()
    ..maxwindKph = (json['maxwindKph'] as num)?.toDouble()
    ..totalprecipMm = (json['totalprecip_mm'] as num)?.toDouble()
    ..totalprecipIn = (json['totalprecip_in'] as num)?.toDouble()
    ..avgvisKm = (json['avgvis_km'] as num)?.toDouble()
    ..avgvisMiles = (json['avgvis_miles'] as num)?.toDouble()
    ..avghumidity = (json['avghumidity'] as num)?.toDouble()
    ..condition = json['condition'] == null
        ? null
        : Condition_.fromJson(json['condition'] as Map<String, dynamic>)
    ..uv = (json['uv'] as num)?.toDouble()
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}



Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return Forecast()
    ..forecastday = (json['forecastday'] as List)
        ?.map((e) =>
            e == null ? null : Forecastday.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}


ForecastWeatherResponse _$ForecastWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return ForecastWeatherResponse()
    ..location = json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>)
    ..current = json['current'] == null
        ? null
        : Current.fromJson(json['current'] as Map<String, dynamic>)
    ..forecast = json['forecast'] == null
        ? null
        : Forecast.fromJson(json['forecast'] as Map<String, dynamic>)
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}


Forecastday _$ForecastdayFromJson(Map<String, dynamic> json) {
  return Forecastday()
    ..date = json['date'] as String
    ..dateEpoch = json['dateEpoch'] as int
    ..day = json['day'] == null
        ? null
        : Day.fromJson(json['day'] as Map<String, dynamic>)
    ..astro = json['astro'] == null
        ? null
        : Astro.fromJson(json['astro'] as Map<String, dynamic>)
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}
Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location()
    ..name = json['name'] as String
    ..region = json['region'] as String
    ..country = json['country'] as String
    ..lat = (json['lat'] as num)?.toDouble()
    ..lon = (json['lon'] as num)?.toDouble()
    ..tzId = json['tzId'] as String
    ..localtimeEpoch = json['localtimeEpoch'] as int
    ..localtime = json['localtime'] as String
    ..additionalProperties =
        json['additionalProperties'] as Map<String, dynamic>;
}
