class ApiCity {
  final String name;
  final num lat;
  final num lon;

  ApiCity.fromApi(Map<String, dynamic> map)
      : name = map['name'],
        lat = map['lat'],
        lon = map['lon'];
}
