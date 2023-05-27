import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:pokedex/models/pokemon_model.dart';

class ApiConstants {
  static String baseUrl = 'https://pokeapi.co/api/v2';
  static String pokemonEndpoint = '/pokemon';
}

class PokemonService {
  Future<PokemonModel?> getPokemon(int id) async {
    try {
      var url = Uri.parse(
          '${ApiConstants.baseUrl}${ApiConstants.pokemonEndpoint}/$id');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        PokemonModel pokemon = pokemonFromJson(response.body);

        var urlSpecies = Uri.parse(pokemon.species.url);
        var responseSpecies = await http.get(urlSpecies);

        if (responseSpecies.statusCode == 200) {
          SpeciesModel species = speciesFromJson(responseSpecies.body);

          var urlEvolutionChain = Uri.parse(species.evolutionChain.url);
          var responseEvolutionChain = await http.get(urlEvolutionChain);

          if (responseEvolutionChain.statusCode == 200) {
            EvolutionChainModel evolutionChain =
                evolutionChainFromJson(responseEvolutionChain.body);

            pokemon.evolutionChain = evolutionChain;
          }
        }

        return pokemon;
      }
    } catch (e) {
      log(e.toString());
    }

    return null;
  }

  Future<List<PokemonModel?>> getPokemonList() async {
    var numbers = List<int>.generate(150, (i) => i + 1);
    return await Future.wait(numbers.map((number) => getPokemon(number)));
  }
}
