import 'package:flutter/material.dart';
import 'package:flutter_solattime/shared/constants.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
      ),
      body: Container(
        color: AppColors.background,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Hey"),
          ],
        ),
      ),
    );
  }
}
