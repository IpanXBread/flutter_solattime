import 'package:flutter/material.dart';
import 'package:flutter_solattime/shared/constants.dart';

class Template extends StatelessWidget {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template Title'),
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
      ),
      body: Container(
        color: AppColors.background,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Template Body"),
          ],
        ),
      ),
    );
  }
}
