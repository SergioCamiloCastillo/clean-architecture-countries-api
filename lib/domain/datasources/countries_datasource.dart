import 'package:countries_flutter/domain/entities/countries.dart';

abstract class CountriesDataSource {
  //definir los metodos para traer la data
  Future<List<Country>> getSpanishCountries();
}
