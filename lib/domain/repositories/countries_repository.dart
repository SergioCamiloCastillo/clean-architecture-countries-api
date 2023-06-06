import 'package:countries_flutter/domain/entities/countries.dart';

abstract class CountriesRepository {
  //los repositorios son los que llaman el datasource
  //los datasources los llaman a traves del repositorio
  //este repositorio permite cambiar el datasource
  //unicamente el repositorio cambiara del datasource
  Future<List<Country>> getSpanishCountries();
}
