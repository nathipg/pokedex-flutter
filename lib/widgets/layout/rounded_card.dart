import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Widget child;
  final Color color;

  const RoundedCard({
    super.key,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      color: color,
      child: child,
    );
  }
}
