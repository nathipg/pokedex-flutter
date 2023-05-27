import 'package:flutter/material.dart';

import 'pokemon_model.dart';

class AppModel with ChangeNotifier {
  List<PokemonModel?> _pokemonList = [];

  List<PokemonModel?> get pokemonList => _pokemonList;

  set pokemonList(List<PokemonModel?> pokemonList) {
    _pokemonList = pokemonList;
    notifyListeners();
  }
}
