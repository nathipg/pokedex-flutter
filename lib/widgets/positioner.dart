import 'package:flutter/material.dart';

class Positioner extends StatelessWidget {
  final double x;
  final double y;
  final Widget child;

  const Positioner({
    super.key,
    required this.x,
    required this.y,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(
        x,
        y,
        0,
      ),
      child: child,
    );
  }
}
