import 'package:flutter/material.dart';
import 'package:flutter_solattime/core/constants/constants.dart';

class BorderContainer extends StatelessWidget {
  final Widget child;
  final List<Color> gradientColors;

  const BorderContainer(
      {super.key, required this.child, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.background,
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: child,
        ),
      ),
    );
  }
}
