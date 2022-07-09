import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hello_weather/domain/state/city_choice_state.dart';
import 'package:hello_weather/internal/dependencies/city_choise_module.dart';
import 'package:hello_weather/domain/model/city.dart';

class CityChoise extends StatefulWidget {
  const CityChoise({Key? key}) : super(key: key);

  @override
  _CityChoiseState createState() => _CityChoiseState();
}

class _CityChoiseState extends State<CityChoise> {
  final _cityNameCOntroller = TextEditingController();

  late CityChoiseState _cityChoiseState;

  @override
  void initState() {
    super.initState();
    _cityChoiseState = CityChoiceModule.cityChoiseState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                _getInput(),
            _getCitiesInfo(),
          ],
        ),
      ),
    );
  }

  Widget _getInput() {
    return Expanded(
          child: TextField(
            controller: _cityNameCOntroller,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(hintText: 'Название города:'),
            onSubmitted: _getCities,
          ),
        );
  }


  _getCities(String cityName) {
      _cityChoiseState.getCity(nameCity: cityName);
  }

  Widget _getCitiesInfo() {
    return Observer(
      builder: (_) {
        if (_cityChoiseState.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
          
        if(_cityChoiseState.city != null) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return city_listView(_cityChoiseState.city![index]);
            }, 
            separatorBuilder: (BuildContext context, int index) => const Divider(), 
            itemCount: _cityChoiseState.city!.length,
            shrinkWrap: true
          );
            
        }

        return Container();
        
      },
    );
  }

  Widget city_listView(City city) {
      return Container(
              height: 50,
              color: Colors.lightBlue,
              child: GestureDetector(
                onTap: ()=>{print(city)},
                child:Column(
                      children: [
                                Text(
                                  city.name,
                                ),
                                Text(
                                  "lat: $city.lat  lon: $city.lon"
                                )
                      ],
                ),
              ),
      );
  }
}
