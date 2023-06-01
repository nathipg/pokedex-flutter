import 'package:flutter/material.dart';

import '../layout/positioner.dart';

class PokemonArt extends StatelessWidget {
  final String imgUrl;
  final double x;
  final double y;
  final double width;
  final double height;

  const PokemonArt({
    super.key,
    required this.imgUrl,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Positioner(
      x: x,
      y: y,
      child: Image(
        height: height,
        width: width,
        image: NetworkImage(
          imgUrl,
        ),
      ),
    );
  }
}
