import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String countryDBKey = dotenv.env['THE_MOVIEDB_KEY'] ?? "No hay";
}