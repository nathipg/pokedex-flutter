import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/pokemon_model.dart';

class ApiConstants {
  static String baseUrl = 'https://pokeapi.co/api/v2';
  static String pokemonEndpoint = '/pokemon';
}

class PokemonService {
  Future<String?> _getEvolutionChainUrl(PokemonModel pokemon) async {
    var url = Uri.parse(pokemon.species.url);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      SpeciesModel species = speciesFromJson(response.body);

      return species.evolutionChain.url;
    }

    return null;
  }

  Future<EvolutionChainModel?> _getEvolutionChain(
    PokemonModel pokemon,
  ) async {
    var urlEvolutionChain = await _getEvolutionChainUrl(pokemon);

    if (urlEvolutionChain == null) {
      return null;
    }

    try {
      var url = Uri.parse(urlEvolutionChain);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        EvolutionChainModel evolutionChain =
            evolutionChainFromJson(response.body);

        return evolutionChain;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }

    return null;
  }

  Future<PokemonModel?> _getPokemon(String pokemonUrl) async {
    try {
      var url = Uri.parse(pokemonUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        PokemonModel pokemon = pokemonFromJson(response.body);

        EvolutionChainModel? evolutionChain = await _getEvolutionChain(pokemon);

        if (evolutionChain != null) {
          pokemon.evolutionChain = evolutionChain;
        }

        return pokemon;
      }
    } catch (e) {
      log(e.toString());
    }

    return null;
  }

  Future<List<PokemonModel>> getPokemonList() async {
    try {
      var url = Uri.parse(
          '${ApiConstants.baseUrl}${ApiConstants.pokemonEndpoint}?limit=1');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        SearchPokemonList originalPokemonList =
            originalPokemonListFromJson(response.body);

        List<PokemonModel?> pokemonList = await Future.wait(originalPokemonList
            .results
            .map((pokemon) => _getPokemon(pokemon.url)));

        return pokemonList.whereType<PokemonModel>().toList();
      }
    } catch (e) {
      log(e.toString());
    }

    return [];
  }
}
