import 'package:countries_flutter/infrastructure/datasources/countrydb_datasource_impl.dart';
import 'package:countries_flutter/infrastructure/repositories/country_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Provider es de solo lectura, es inmutable
final countryRepositoryProvider = Provider((ref) {
 
  return CountryRepositoryImpl(CountryDbDatasource());
});