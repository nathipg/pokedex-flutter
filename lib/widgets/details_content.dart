import 'package:flutter/material.dart';

import '../models/pokemon_model.dart';

class DetailsContent extends StatelessWidget {
  final PokemonModel pokemon;
  final List<PokemonModel> pokemonList;

  const DetailsContent({
    super.key,
    required this.pokemon,
    required this.pokemonList,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: const Padding(
          padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
          child: Text('DETAILS'),
        ),
      ),
    );
  }
}
