import 'package:countries_flutter/config/constants/environment.dart';
import 'package:countries_flutter/presentation/screens/providers/countries/countries_providers.dart';
import 'package:countries_flutter/presentation/screens/providers/countries/country_repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = "home-screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _HomeView());
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

      ref.read(spanishCountriesProvider.notifier).loadData();
   
  }

  @override
  Widget build(BuildContext context) {
    final spanishCountries = ref.watch(spanishCountriesProvider);
    return ListView.builder(
      itemCount: spanishCountries.length,
      itemBuilder: (context, index) {
        final movie = spanishCountries[index];
        return ListTile(
          title: Text(movie.officialName),
        );
      },
    );
  }
}
