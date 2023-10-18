import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../domain/pokemon.dart';
import '/service/pokemon_client.dart';
import 'package:flutter/material.dart';

// 1. The pokemon variable is declared at the class level to store the retrieved Pokemon object.

// 2. In the initState method, you call the getPokemon function and provide a callback function to update the pokemon variable when the data is available.
// This is done within the setState method to trigger a rebuild of the widget when the pokemon data is received.

// 3. In the build method, you conditionally display a loading indicator while waiting
// for the pokemon data to be retrieved. Once the data is available, it displays the name of the Pokemon.

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Pokemon? pokemon;

  @override
  void initState() {
    super.initState();
    // Call your getPokemon function here and set the 'pokemon' variable
    getPokemon((retrievedPokemon) {
      setState(() {
        pokemon = retrievedPokemon;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Details'),
      ),
      body: Center(
        child: pokemon == null
            ? const CircularProgressIndicator() // Loading indicator
            : Text(
                'Pokemon Name: ${pokemon?.name}'), // Display the Pokemon name
      ),
    );
  }
}
