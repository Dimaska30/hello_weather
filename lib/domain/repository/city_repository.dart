import 'package:meta/meta.dart';
import 'package:hello_weather/domain/model/city.dart';

abstract class CityRepository {
  Future<City> getCity({
    @required String name,
  });
}
