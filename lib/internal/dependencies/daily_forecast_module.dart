import 'package:hello_weather/domain/state/daily_forecast_page_state.dart';
import 'package:hello_weather/internal/dependencies/repository_module.dart';

class DailyForecastModule {
  static DailyForecastPageState dailyForecastPageState() {
    return DailyForecastPageState(
      RepositoryModule.dailyForecastRepository(),
    );
  }
}