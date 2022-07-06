class ApiCity {
  final String name;
  final num lat;
  final num lon;
  final num id;

  ApiCity.fromApi(Map<String, dynamic> map)
      : name = map['results']['name'],
        lat = map['results']['lat'],
        lon = map['results']['lon'],
        id = map['results']['id'];
}
