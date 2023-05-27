import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../helpers/type_color.dart';
import '../models/pokemon_model.dart';
import 'pokemon_type_card.dart';

class PokemonCard extends StatelessWidget {
  final PokemonModel pokemon;
  final BuildContext context;

  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/details/${pokemon.id}'),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        color: TypeColor.getTypeColor(pokemon.types[0].type.name),
        child: SizedBox(
          height: 125,
          width: 185,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: AlignmentDirectional.bottomEnd,
                image: NetworkImage(
                  pokemon.sprites.frontDefault,
                ),
                fit: BoxFit.none,
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    toBeginningOfSentenceCase(pokemon.name) ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )),
              for (var type in pokemon.types)
                PokemonTypeCard(type: type.type.name)
            ]),
          ),
        ),
      ),
    );
  }
}
