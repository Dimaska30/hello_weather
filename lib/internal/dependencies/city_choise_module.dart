import 'package:hello_weather/domain/state/city_choice_state.dart';
import 'package:hello_weather/internal/dependencies/repository_module.dart';

class CityChoiceModule {
  static CityChoiseState cityChoiseState() {
    return CityChoiseState(
      RepositoryModule.cityRepository(),
    );
  }
}