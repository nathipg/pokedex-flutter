import 'package:flutter/material.dart';

import '../../../models/pokemon_model.dart';
import 'pokemon_card.dart';

class PokemonCardList extends StatelessWidget {
  final List<PokemonModel> pokemonList;

  const PokemonCardList({
    super.key,
    required this.pokemonList,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var pokemon in pokemonList)
          PokemonCard(
            pokemon: pokemon,
          )
      ],
    );
  }
}
