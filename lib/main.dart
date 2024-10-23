import 'package:flutter/material.dart';
import 'package:flutter_solattime/core/constants/constants.dart';
import 'package:flutter_solattime/views/home.dart';
import 'package:flutter_solattime/views/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.black),
          bodyMedium: TextStyle(color: AppColors.black),
          bodySmall: TextStyle(color: AppColors.black),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/settings': (context) => const Settings()
      },
    );
  }
}
