import 'package:flutter/material.dart';
import 'package:flutter_solattime/core/constants/constants.dart';

class iText extends StatelessWidget {
  final String text;
  final int? size;
  final Color? color;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextDecoration? textDecoration;
  const iText({
    super.key,
    required this.text,
    this.size,
    this.color,
    this.fontWeight,
    this.fontStyle,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: size?.toDouble() ?? 14,
          color: color ?? AppColors.white,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: fontStyle ?? FontStyle.normal,
          decoration: textDecoration ?? TextDecoration.none,
        ));
  }
}

// 18 - Big
// 14 - Standard
// 11 - Small