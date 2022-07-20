import 'package:flutter/material.dart';

class Subhead extends StatelessWidget {
  const Subhead({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 2,
            margin: const EdgeInsets.only(right: 8),
            color: theme.primaryColor,
          ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
