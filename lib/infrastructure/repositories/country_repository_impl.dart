import 'package:countries_flutter/domain/datasources/countries_datasource.dart';
import 'package:countries_flutter/domain/entities/countries.dart';
import 'package:countries_flutter/domain/repositories/countries_repository.dart';

//nuestro objetivo es crear la instancia CountryRepositoryImpl, llamar el getSpanishCountries, que viene de la clase abstracta y que se basa en el datasource
class CountryRepositoryImpl extends CountriesRepository{
  //este viene de countries datasource
  final CountriesDataSource datasource;

  CountryRepositoryImpl(this.datasource);
  @override
  //este viene de country repository
  Future<List<Country>> getSpanishCountries() async{
    return datasource.getSpanishCountries();
  }

}