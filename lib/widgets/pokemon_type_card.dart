import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PokemonTypeCard extends StatelessWidget {
  final String type;

  const PokemonTypeCard({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      color: Colors.white.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Text(
          toBeginningOfSentenceCase(type) ?? '',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
