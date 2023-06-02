import 'package:flutter/material.dart';

class DetailsTabLabel extends StatelessWidget {
  final String text;

  const DetailsTabLabel({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
