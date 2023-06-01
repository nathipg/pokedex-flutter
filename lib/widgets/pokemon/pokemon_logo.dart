import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../positioner.dart';

class PokemonLogo extends StatelessWidget {
  final Color color;
  final double x;
  final double y;
  final double width;
  final double height;

  const PokemonLogo({
    super.key,
    required this.color,
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
      child: Opacity(
        opacity: 0.1,
        child: SvgPicture.asset(
          'assets/imgs/pokemon_icon.svg',
          allowDrawingOutsideViewBox: true,
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.srcIn,
          ),
          width: width,
          height: height,
        ),
      ),
    );
  }
}
