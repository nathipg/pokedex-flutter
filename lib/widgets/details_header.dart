import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/pokemon_model.dart';
import 'page_title.dart';
import 'pokemon_type_card.dart';

class DetailsHeader extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailsHeader({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            PageTitle(
              text: toBeginningOfSentenceCase(pokemon.name) ?? '',
              color: Colors.white,
              withToolbar: true,
              marginBottom: 8,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  for (var type in pokemon.types)
                    PokemonTypeCard(type: type.type.name)
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: 16),
          child: Text(
            '#${pokemon.id.toString().padLeft(3, 0.toString())}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
