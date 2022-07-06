class ApiTemp {
  final num day;
  final num min;
  final num max;
  final num night;
  final num evening;
  final num morning;

  ApiTemp.fromApi(Map<String, dynamic> map)
      : day = map['day'],
        min = map['min'],
        max = map['max'],
        night = map['night'],
        evening = map['eve'],
        morning = map['morn'];
}
