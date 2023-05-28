import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final Color color;
  final String text;

  const PageTitle({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 64, 16, 32),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
      ),
    );
  }
}
