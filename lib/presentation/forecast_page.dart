import 'package:flutter/material.dart';
import 'package:hello_weather/domain/state/daily_forecast_page_state.dart';
import 'package:hello_weather/internal/dependencies/daily_forecast_module.dart';

class DailyForecastPage extends StatefulWidget {
  const DailyForecastPage({Key? key}) : super(key: key);

  @override
  _DailyForecastPageState createState() => _DailyForecastPageState();
}

class _DailyForecastPageState extends State<DailyForecastPage> {

  late DailyForecastPageState _dailyForecastPageState;

  @override
  void initState() {
    super.initState();
    _dailyForecastPageState = DailyForecastModule.dailyForecastPageState();
  }


  @override
  Widget build(BuildContext context) {
    return Text("data");
  }
}
