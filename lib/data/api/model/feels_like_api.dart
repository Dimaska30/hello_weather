class ApiFeelsLike {
  final double day;
  final double night;
  final double evening;
  final double morning;

  ApiFeelsLike.fromApi(Map<String, dynamic> map)
      : day = map['day'],
        night = map['night'],
        evening = map['eve'],
        morning = map['morn'];
}
