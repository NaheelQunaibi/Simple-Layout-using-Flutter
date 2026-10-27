import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({
    super.key,
    required this.number,
    required this.numberColor,
    required this.statsName,
    required this.statsColor,
  });

  final String number;
  final Color numberColor;
  final String statsName;
  final Color statsColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: numberColor,
          ),
        ),
        Text(
          statsName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: statsColor,
          ),
        ),
      ],
    );
  }
}
