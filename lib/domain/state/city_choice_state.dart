// ignore: import_of_legacy_library_into_null_safe
import 'package:mobx/mobx.dart';
import 'package:hello_weather/domain/repository/city_repository.dart';
import 'package:hello_weather/domain/model/city.dart';

//ignore
part 'city_choice_state.g.dart';

class CityChoiseState = CityChoiseStateBase with _$CityChoiseState;

abstract class CityChoiseStateBase with Store {
  CityChoiseStateBase(this._cityRepository);

  final CityRepository _cityRepository;

  @observable
  List<City>? city;

  @observable
  bool isLoading = false;

  @action
  Future<void> getCity({
    required String nameCity,
  }) async {
    isLoading = true;
    final data = await _cityRepository.getCity(name: nameCity);
    city = data;
    isLoading = false;
  }
}