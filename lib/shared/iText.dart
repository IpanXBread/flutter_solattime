import 'package:flutter/material.dart';
import 'package:flutter_solattime/shared/constants.dart';

class iText extends StatelessWidget {
  final String text;
  final int? size;
  final Color? color;
  const iText({super.key, required this.text, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size?.toDouble() ?? 14,
        color: color ?? AppColors.white,
      )
    );
  }
}

// 18 - Big
// 14 - Standard
// 11 - Small