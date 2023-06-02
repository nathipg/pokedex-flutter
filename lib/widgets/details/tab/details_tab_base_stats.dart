import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/pokemon_model.dart';
import 'details_tab_item.dart';

class DetailsTabBaseStats extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailsTabBaseStats({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsTabItem(
          label: 'HP',
          value: pokemon.stats[0].baseStat.toString(),
        ),
      ],
    );
  }
}
