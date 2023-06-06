//el mapper tiene como mision leer diferentes modelos y crear mi entidad

import 'package:countries_flutter/domain/entities/countries.dart';
import 'package:countries_flutter/infrastructure/models/countrydb/countrydb_response.dart';

class CountryMapper {
  static Country countryDBToEntity(CountriesDbResponse countryDataFromApi) =>
      Country(
          officialName: countryDataFromApi.name.common,
          capital: countryDataFromApi.capital[0],
          languages: countryDataFromApi.languages,
          population: countryDataFromApi.population,
          continents: countryDataFromApi.continents
              .map((item) => item.toString())
              .toList());
}
