import 'package:hello_weather/data/api/util.dart';
import 'package:hello_weather/domain/model/city.dart';
import 'package:hello_weather/domain/repository/city_repository.dart';

class CityDataRepository extends CityRepository {
  final ApiUtil _apiUtil;

  CityDataRepository(this._apiUtil);

  @override
  Future<List<City>> getCity({required String name}) {
    return _apiUtil.getCities(city: name);
  }
}
