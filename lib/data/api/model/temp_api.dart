class ApiTemp {
  final double day;
  final double min;
  final double max;
  final double night;
  final double evening;
  final double morning;

  ApiTemp.fromApi(Map<String, dynamic> map)
      : day = map['day'],
        min = map['min'],
        max = map['max'],
        night = map['night'],
        evening = map['eve'],
        morning = map['morn'];
}
