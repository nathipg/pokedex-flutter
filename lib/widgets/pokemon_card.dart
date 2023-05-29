import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../helpers/type_color.dart';
import '../models/pokemon_model.dart';
import 'pokemon_card_content.dart';
import 'pokemon_logo.dart';
import 'rounded_card.dart';

class PokemonCard extends StatelessWidget {
  final PokemonModel pokemon;

  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/details/${pokemon.id}'),
      child: RoundedCard(
        color: TypeColor.getTypeColor(pokemon.types[0].type.name),
        child: SizedBox(
          height: 125,
          width: 185,
          child: Stack(
            children: [
              const PokemonLogo(
                color: Colors.white,
                x: 85,
                y: 30,
                width: 100,
                height: 100,
              ),
              PokemonCardContent(pokemon: pokemon),
            ],
          ),
        ),
      ),
    );
  }
}
