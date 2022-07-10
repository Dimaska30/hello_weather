import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hello_weather/domain/state/daily_forecast_page_state.dart';
import 'package:hello_weather/internal/dependencies/daily_forecast_module.dart';
import 'package:hello_weather/presentation/line_chart.dart';

class DailyForecastPage extends StatefulWidget {
  const DailyForecastPage({Key? key}) : super(key: key);

  @override
  State<DailyForecastPage> createState() => _DailyForecastPageState();
}

class _DailyForecastPageState extends State<DailyForecastPage> {
  late DailyForecastPageState _dailyForecastPageState;

  List<double>? actualTemp;
  List<double>? feelsLikeTemp;

  @override
  void initState() {
    super.initState();
    _dailyForecastPageState = DailyForecastModule.dailyForecastPageState();
    _dailyForecastPageState.getForecast(
        nameCity: _dailyForecastPageState.city.name);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (_dailyForecastPageState.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (_dailyForecastPageState.forecast != null) {
          return Center(
            child: MyLineChart(
              nameCity: _dailyForecastPageState.city.name,
              max: _dailyForecastPageState.forecast!.getMaxTemp(),
              min: _dailyForecastPageState.forecast!.getMinTemp(),
              actual: _dailyForecastPageState.forecast!.getActualTemp(),
              feelLike: _dailyForecastPageState.forecast!.getFeelsLikeTemp(),
            ),
          );
        }

        return Container();
      },
    );
  }
}
