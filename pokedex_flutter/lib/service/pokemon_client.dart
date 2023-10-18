import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../domain/pokemon.dart';

Future<Pokemon> getPokemon(Function(Pokemon) callback) async {
  final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/1/'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final pokemon = Pokemon.fromJson(data);
    callback(pokemon);
    return pokemon;
  } else {
    throw Exception('Failed to fetch Pokémon data'); // Throw an exception on error
  }
}
