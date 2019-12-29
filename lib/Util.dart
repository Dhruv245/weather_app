


class Util {

  static const _WEEKDAYS = [
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday'
  ];

  static String getDay(String dateFormat) {
    var date = DateTime.parse(dateFormat);
    int weekDay = date.weekday;
    String s =  _WEEKDAYS[weekDay-1];
    return s;
  }
}
