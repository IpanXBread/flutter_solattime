import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;

  const BoxContainer({super.key, required this.text, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Text(text),
    );
  }
}
