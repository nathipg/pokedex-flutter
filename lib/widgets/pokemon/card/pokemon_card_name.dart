import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PokemonCardName extends StatelessWidget {
  final String name;

  const PokemonCardName({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Text(
        toBeginningOfSentenceCase(name) ?? '',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
