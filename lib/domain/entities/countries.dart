class Country {
  final String officialName;
  final String capital;
  final Map<String, String> languages;
  final int population;
  final List<String> continents;

  Country(
      {required this.officialName,
      required this.capital,
      required this.languages,
      required this.population,
      required this.continents});
}
