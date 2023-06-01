import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final Color color;
  final String text;
  final bool withToolbar;
  final double marginBottom;

  const PageTitle({
    super.key,
    required this.color,
    required this.text,
    required this.withToolbar,
    required this.marginBottom,
  });

  @override
  Widget build(BuildContext context) {
    double marginTop = withToolbar ? 8 : 64;

    return Container(
      margin: EdgeInsets.fromLTRB(16, marginTop, 16, marginBottom),
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
