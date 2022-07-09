// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_choice_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CityChoiseState on CityChoiseStateBase, Store {
  late final _$cityAtom =
      Atom(name: 'CityChoiseStateBase.city', context: context);

  @override
  List<City>? get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(List<City>? value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'CityChoiseStateBase.isLoading', context: context);

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

  late final _$getCityAsyncAction =
      AsyncAction('CityChoiseStateBase.getCity', context: context);

  @override
  Future<void> getCity({required String nameCity}) {
    return _$getCityAsyncAction.run(() => super.getCity(nameCity: nameCity));
  }

  @override
  String toString() {
    return '''
city: ${city},
isLoading: ${isLoading}
    ''';
  }
}
