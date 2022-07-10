class ApiCity {
  final String name;
  final double lat;
  final double lon;

  ApiCity.fromApi(Map<String, dynamic> map)
      : name = map['name'],
        lat = map['lat'],
        lon = map['lon'];
}
