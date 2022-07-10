import 'package:hello_weather/data/api/model/city_api.dart';
import 'package:hello_weather/domain/model/city.dart';

class CityMapper {
  static City fromApi(ApiCity city) {
    return City(
      name: city.name,
      lat: city.lat,
      lon: city.lon,
    );
  }
}
