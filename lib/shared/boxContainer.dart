import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  final String text;
  final Color color;

  const BoxContainer({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          color: color,
          child: Text(text),
        ),
      ],
    );
  }
}
