import 'package:flutter/material.dart';

import '../models/pokemon_model.dart';
import 'pokemon_card_name.dart';
import 'pokemon_type_card.dart';

class PokemonCardContent extends StatelessWidget {
  final PokemonModel pokemon;

  const PokemonCardContent({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomRight,
              image: NetworkImage(
                pokemon.sprites.frontDefault,
              ),
              fit: BoxFit.none,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PokemonCardName(name: pokemon.name),
              for (var type in pokemon.types)
                PokemonTypeCard(type: type.type.name)
            ],
          ),
        ),
      ],
    );
  }
}
