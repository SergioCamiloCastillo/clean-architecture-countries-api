import 'package:countries_flutter/domain/entities/countries.dart';
import 'package:countries_flutter/presentation/screens/providers/countries/country_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//el objetivo de este provider spanishCountriesProvider, es sea manejado por StateNotifierProvider, y saber especificamente las peliculas que vengan de fetchCountriesData va a ser getSpanishCountries
final spanishCountriesProvider =
    StateNotifierProvider<CountriesNotifier, List<Country>>((ref) {
  final fetchCountriesData = ref.watch(countryRepositoryProvider).getSpanishCountries;
  return CountriesNotifier(fetchCountriesData: fetchCountriesData);
});

typedef CountryCallback = Future<List<Country>> Function();

class CountriesNotifier extends StateNotifier<List<Country>> {
  //se crea la clase CountriesNotifier generica para mantener el estado de las peliculas un arreglo de peliculas
  CountryCallback fetchCountriesData;
  CountriesNotifier({required this.fetchCountriesData}) : super([]);

//tiene la funcion loadData, para cargar la data de movies en memoria
  Future<void> loadData() async {
    //hacerle modificacion el state
    final List<Country> countries = await fetchCountriesData();
    state = [...state, ...countries];
  }
}
