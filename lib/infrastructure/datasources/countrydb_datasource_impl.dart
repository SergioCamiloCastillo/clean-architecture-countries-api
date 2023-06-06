import 'package:countries_flutter/infrastructure/mappers/country_mapper.dart';
import 'package:countries_flutter/infrastructure/models/countrydb/countrydb_response.dart';
import 'package:dio/dio.dart';
import 'package:countries_flutter/domain/datasources/countries_datasource.dart';
import 'package:countries_flutter/domain/entities/countries.dart';

class CountryDbDatasource extends CountriesDataSource {
  final dio = Dio(BaseOptions(baseUrl: "https://restcountries.com/v3.1"));
  @override
  Future<List<Country>> getSpanishCountries() async {
    final response = await dio.get("/lang/spanish");
    final countryDbResponse = (response.data as List)
        .map((json) => CountriesDbResponse.fromJson(json))
        .toList();
    final List<Country> countries = countryDbResponse
        .map((countryDb) => CountryMapper.countryDBToEntity(countryDb))
        .toList();
    return countries;
  }
}
