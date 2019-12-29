import 'package:json_annotation/json_annotation.dart';


part '../network/WeatherForecastJson.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Astro extends Object  {

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);

  Astro();

  String sunrise;
  String sunset;
  String moonrise;
  String moonset;
  var additionalProperties = new Map<String, Object>();

  String getSunrise() {
    return sunrise;
  }

  void setSunrise(String sunrise) {
    this.sunrise = sunrise;
  }

  String getSunset() {
    return sunset;
  }

  void setSunset(String sunset) {
    this.sunset = sunset;
  }

  String getMoonrise() {
    return moonrise;
  }

  void setMoonrise(String moonrise) {
    this.moonrise = moonrise;
  }

  String getMoonset() {
    return moonset;
  }

  void setMoonset(String moonset) {
    this.moonset = moonset;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }


}

@JsonSerializable()
class Condition {
  String text;
  String icon;
  int code;
  var additionalProperties = new Map<String, Object>();

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);

  Condition();

  String getText() {
    return text;
  }

  void setText(String text) {
    this.text = text;
  }

  String getIcon() {
    return icon;
  }

  void setIcon(String icon) {
    this.icon = icon;
  }

  int getCode() {
    return code;
  }

  void setCode(int code) {
    this.code = code;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}

@JsonSerializable()
class Condition_ {


  factory Condition_.fromJson(Map<String, dynamic> json) => _$Condition_FromJson(json);

  Condition_();

  String text;
  String icon;
  int code;
  var additionalProperties = new Map<String, Object>();

  String getText() {
    return text;
  }

  void setText(String text) {
    this.text = text;
  }

  String getIcon() {
    return icon;
  }

  void setIcon(String icon) {
    this.icon = icon;
  }

  int getCode() {
    return code;
  }

  void setCode(int code) {
    this.code = code;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}

@JsonSerializable()
class Current {



  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

  Current();

  int lastUpdatedEpoch;
  String lastUpdated;
  double tempC;
  double tempF;
  int isDay;
  Condition condition;
  double windMph;
  double windKph;
  int windDegree;
  String windDir;
  double pressureMb;
  double pressureIn;
  double precipMm;
  double precipIn;
  int humidity;
  int cloud;
  double feelslikeC;
  double feelslikeF;
  double visKm;
  double visMiles;
  var additionalProperties = new Map<String, Object>();

  int getLastUpdatedEpoch() {
    return lastUpdatedEpoch;
  }

  void setLastUpdatedEpoch(int lastUpdatedEpoch) {
    this.lastUpdatedEpoch = lastUpdatedEpoch;
  }

  String getLastUpdated() {
    return lastUpdated;
  }

  void setLastUpdated(String lastUpdated) {
    this.lastUpdated = lastUpdated;
  }

  double getTempC() {
    return tempC;
  }

  void setTempC(double tempC) {
    this.tempC = tempC;
  }

  double getTempF() {
    return tempF;
  }

  void setTempF(double tempF) {
    this.tempF = tempF;
  }

  int getIsDay() {
    return isDay;
  }

  void setIsDay(int isDay) {
    this.isDay = isDay;
  }

  Condition getCondition() {
    return condition;
  }

  void setCondition(Condition condition) {
    this.condition = condition;
  }

  double getWindMph() {
    return windMph;
  }

  void setWindMph(double windMph) {
    this.windMph = windMph;
  }

  double getWindKph() {
    return windKph;
  }

  void setWindKph(double windKph) {
    this.windKph = windKph;
  }

  int getWindDegree() {
    return windDegree;
  }

  void setWindDegree(int windDegree) {
    this.windDegree = windDegree;
  }

  String getWindDir() {
    return windDir;
  }

  void setWindDir(String windDir) {
    this.windDir = windDir;
  }

  double getPressureMb() {
    return pressureMb;
  }

  void setPressureMb(double pressureMb) {
    this.pressureMb = pressureMb;
  }

  double getPressureIn() {
    return pressureIn;
  }

  void setPressureIn(double pressureIn) {
    this.pressureIn = pressureIn;
  }

  double getPrecipMm() {
    return precipMm;
  }

  void setPrecipMm(double precipMm) {
    this.precipMm = precipMm;
  }

  double getPrecipIn() {
    return precipIn;
  }

  void setPrecipIn(double precipIn) {
    this.precipIn = precipIn;
  }

  int getHumidity() {
    return humidity;
  }

  void setHumidity(int humidity) {
    this.humidity = humidity;
  }

  int getCloud() {
    return cloud;
  }

  void setCloud(int cloud) {
    this.cloud = cloud;
  }

  double getFeelslikeC() {
    return feelslikeC;
  }

  void setFeelslikeC(double feelslikeC) {
    this.feelslikeC = feelslikeC;
  }

  double getFeelslikeF() {
    return feelslikeF;
  }

  void setFeelslikeF(double feelslikeF) {
    this.feelslikeF = feelslikeF;
  }

  double getVisKm() {
    return visKm;
  }

  void setVisKm(double visKm) {
    this.visKm = visKm;
  }

  double getVisMiles() {
    return visMiles;
  }

  void setVisMiles(double visMiles) {
    this.visMiles = visMiles;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}

@JsonSerializable()
class Day {

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Day();

  double maxtempC;
  double maxtempF;
  double mintempC;
  double mintempF;
  double avgtempC;
  double avgtempF;
  double maxwindMph;
  double maxwindKph;
  double totalprecipMm;
  double totalprecipIn;
  double avgvisKm;
  double avgvisMiles;
  double avghumidity;
  Condition_ condition;
  double uv;
  var additionalProperties = new Map<String, Object>();

  double getMaxtempC() {
    return maxtempC;
  }

  void setMaxtempC(double maxtempC) {
    this.maxtempC = maxtempC;
  }

  double getMaxtempF() {
    return maxtempF;
  }

  void setMaxtempF(double maxtempF) {
    this.maxtempF = maxtempF;
  }

  double getMintempC() {
    return mintempC;
  }

  void setMintempC(double mintempC) {
    this.mintempC = mintempC;
  }

  double getMintempF() {
    return mintempF;
  }

  void setMintempF(double mintempF) {
    this.mintempF = mintempF;
  }

  double getAvgtempC() {
    return avgtempC;
  }

  void setAvgtempC(double avgtempC) {
    this.avgtempC = avgtempC;
  }

  double getAvgtempF() {
    return avgtempF;
  }

  void setAvgtempF(double avgtempF) {
    this.avgtempF = avgtempF;
  }

  double getMaxwindMph() {
    return maxwindMph;
  }

  void setMaxwindMph(double maxwindMph) {
    this.maxwindMph = maxwindMph;
  }

  double getMaxwindKph() {
    return maxwindKph;
  }

  void setMaxwindKph(double maxwindKph) {
    this.maxwindKph = maxwindKph;
  }

  double getTotalprecipMm() {
    return totalprecipMm;
  }

  void setTotalprecipMm(double totalprecipMm) {
    this.totalprecipMm = totalprecipMm;
  }

  double getTotalprecipIn() {
    return totalprecipIn;
  }

  void setTotalprecipIn(double totalprecipIn) {
    this.totalprecipIn = totalprecipIn;
  }

  double getAvgvisKm() {
    return avgvisKm;
  }

  void setAvgvisKm(double avgvisKm) {
    this.avgvisKm = avgvisKm;
  }

  double getAvgvisMiles() {
    return avgvisMiles;
  }

  void setAvgvisMiles(double avgvisMiles) {
    this.avgvisMiles = avgvisMiles;
  }

  double getAvghumidity() {
    return avghumidity;
  }

  void setAvghumidity(double avghumidity) {
    this.avghumidity = avghumidity;
  }

  Condition_ getCondition() {
    return condition;
  }

  void setCondition(Condition_ condition) {
    this.condition = condition;
  }

  double getUv() {
    return uv;
  }

  void setUv(double uv) {
    this.uv = uv;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}

@JsonSerializable()
class Forecast {

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  Forecast();

  List<Forecastday> forecastday;
  var additionalProperties = new Map<String, Object>();

  List<Forecastday> getForecastday() {
    return forecastday;
  }

  void setForecastday(List<Forecastday> forecastday) {
    this.forecastday = forecastday;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}

@JsonSerializable()
class ForecastWeatherResponse {

  factory ForecastWeatherResponse.fromJson(Map<String, dynamic> json) => _$ForecastWeatherResponseFromJson(json);

  ForecastWeatherResponse();

  Location location;
  Current current;
  Forecast forecast;
  var additionalProperties = new Map<String, Object>();

  Location getLocation() {
    return location;
  }

  void setLocation(Location location) {
    this.location = location;
  }

  Current getCurrent() {
    return current;
  }

  void setCurrent(Current current) {
    this.current = current;
  }

  Forecast getForecast() {
    return forecast;
  }

  void setForecast(Forecast forecast) {
    this.forecast = forecast;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}

@JsonSerializable()
class Forecastday {

  factory Forecastday.fromJson(Map<String, dynamic> json) => _$ForecastdayFromJson(json);

  Forecastday();

  String date;
  int dateEpoch;
  Day day;
  Astro astro;
  var additionalProperties = new Map<String, Object>();

  String getDate() {
    return date;
  }

  void setDate(String date) {
    this.date = date;
  }

  int getDateEpoch() {
    return dateEpoch;
  }

  void setDateEpoch(int dateEpoch) {
    this.dateEpoch = dateEpoch;
  }

  Day getDay() {
    return day;
  }

  void setDay(Day day) {
    this.day = day;
  }

  Astro getAstro() {
    return astro;
  }

  void setAstro(Astro astro) {
    this.astro = astro;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}

@JsonSerializable()
class Location {

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Location();

  String name;
  String region;
  String country;
  double lat;
  double lon;
  String tzId;
  int localtimeEpoch;
  String localtime;
  var additionalProperties = new Map<String, Object>();

  String getName() {
    return name;
  }

  void setName(String name) {
    this.name = name;
  }

  String getRegion() {
    return region;
  }

  void setRegion(String region) {
    this.region = region;
  }

  String getCountry() {
    return country;
  }

  void setCountry(String country) {
    this.country = country;
  }

  double getLat() {
    return lat;
  }

  void setLat(double lat) {
    this.lat = lat;
  }

  double getLon() {
    return lon;
  }

  void setLon(double lon) {
    this.lon = lon;
  }

  String getTzId() {
    return tzId;
  }

  void setTzId(String tzId) {
    this.tzId = tzId;
  }

  int getLocaltimeEpoch() {
    return localtimeEpoch;
  }

  void setLocaltimeEpoch(int localtimeEpoch) {
    this.localtimeEpoch = localtimeEpoch;
  }

  String getLocaltime() {
    return localtime;
  }

  void setLocaltime(String localtime) {
    this.localtime = localtime;
  }

  Map<String, Object> getAdditionalProperties() {
    return this.additionalProperties;
  }

  void setAdditionalProperty(String name, Object value) {
    this.additionalProperties[name] = value;
  }
}
