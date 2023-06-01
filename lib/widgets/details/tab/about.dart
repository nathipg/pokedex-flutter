import 'package:flutter/material.dart';

import '../../../models/pokemon_model.dart';

class DetailsTabAbout extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailsTabAbout({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('TAB 1 FOR REAL');
  }
}
