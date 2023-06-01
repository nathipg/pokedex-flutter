import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helpers/type_color.dart';
import '../models/app_model.dart';
import '../models/pokemon_model.dart';
import '../widgets/details/details_content.dart';
import '../widgets/details/details_header.dart';
import '../widgets/pokemon/pokemon_art.dart';
import '../widgets/pokemon/pokemon_logo.dart';

class DetailsScreen extends StatelessWidget {
  final String? pokemonId;

  const DetailsScreen({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
        builder: (context, viewModel, _) => pokemonId != null
            ? DetailsScreenContent(
                pokemonId: pokemonId!,
                pokemonList: viewModel.pokemonList,
              )
            : const Text('Couldn\'t find pokemon'));
  }
}

class DetailsScreenContent extends StatelessWidget {
  final String pokemonId;
  final List<PokemonModel> pokemonList;

  const DetailsScreenContent(
      {super.key, required this.pokemonList, required this.pokemonId});

  @override
  Widget build(BuildContext context) {
    PokemonModel pokemon =
        pokemonList.firstWhere((pokemon) => pokemon.id == int.parse(pokemonId));

    String pokemonImg = pokemon.sprites.other?.officialArtwork.frontDefault ??
        pokemon.sprites.frontDefault;

    return Scaffold(
      backgroundColor: TypeColor.getTypeColor(pokemon.types[0].type.name),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          PokemonLogo(
            color: Colors.white,
            x: MediaQuery.of(context).size.width * 0.2,
            y: 50,
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.width / 1.5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsHeader(
                pokemon: pokemon,
              ),
              DetailsContent(
                pokemon: pokemon,
                pokemonList: pokemonList,
              ),
            ],
          ),
          PokemonArt(
            imgUrl: pokemonImg,
            x: MediaQuery.of(context).size.width / 4,
            y: MediaQuery.of(context).size.height / 4 -
                MediaQuery.of(context).size.width / 8,
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width / 2,
          ),
        ],
      ),
    );
  }
}
