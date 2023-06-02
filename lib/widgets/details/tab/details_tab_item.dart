import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'details_tab_label.dart';

class DetailsTabItem extends StatelessWidget {
  final String label;
  final String value;

  const DetailsTabItem({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: DetailsTabLabel(text: label),
          ),
          Expanded(
            flex: 2,
            child: Text(toBeginningOfSentenceCase(value) ?? ''),
          ),
        ],
      ),
    );
  }
}
