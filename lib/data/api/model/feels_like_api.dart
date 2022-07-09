class ApiFeelsLike {
  final num day;
  final num night;
  final num evening;
  final num morning;

  ApiFeelsLike.fromApi(Map<String, dynamic> map)
      : day = map['day'],
        night = map['night'],
        evening = map['eve'],
        morning = map['morn'];
}
