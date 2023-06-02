import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/pokemon_model.dart';
import 'details_tab_item.dart';

class DetailsTabAbout extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailsTabAbout({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsTabItem(
          label: 'Species',
          value: pokemon.species.name,
        ),
        DetailsTabItem(
          label: 'Height',
          value: pokemon.height.toString(),
        ),
        DetailsTabItem(
          label: 'Weight',
          value: pokemon.weight.toString(),
        ),
        DetailsTabItem(
          label: 'Abilities',
          value: pokemon.abilities
              .map((ability) => toBeginningOfSentenceCase(ability.ability.name))
              .join('; ')
              .toString(),
        ),
      ],
    );
  }
}
