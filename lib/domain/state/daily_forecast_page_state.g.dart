// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast_page_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DailyForecastPageState on DailyForecastPageStateBase, Store {
  late final _$cityAtom =
      Atom(name: 'DailyForecastPageStateBase.city', context: context);

  @override
  DailyForecast? get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(DailyForecast? value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'DailyForecastPageStateBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getForecastAsyncAction =
      AsyncAction('DailyForecastPageStateBase.getForecast', context: context);

  @override
  Future<void> getForecast({required String nameCity}) {
    return _$getForecastAsyncAction
        .run(() => super.getForecast(nameCity: nameCity));
  }

  @override
  String toString() {
    return '''
city: ${city},
isLoading: ${isLoading}
    ''';
  }
}
