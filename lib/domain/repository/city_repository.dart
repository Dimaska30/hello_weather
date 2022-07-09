import 'package:hello_weather/domain/model/city.dart';

abstract class CityRepository {
  Future<List<City>> getCity({
    required String name,
  });
}
