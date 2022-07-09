import 'package:flutter/material.dart';
import 'package:hello_weather/presentation/city_choise.dart';
import 'package:hello_weather/presentation/forecast_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: DailyForecastPage(),
      ),
    );
  }
}
