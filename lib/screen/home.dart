import 'package:flutter/material.dart';
import 'package:flutter_solattime/shared/borderContainer.dart';
import 'package:flutter_solattime/shared/boxContainer.dart';
import 'package:flutter_solattime/shared/constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title",
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
        backgroundColor: AppColors.background,
      ),
      body: Container(
        color: AppColors.background,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoxContainer(
                text: "Test 1", gradientColors: AppColors.gradientLime),
            BoxContainer(
                text: "Test 2", gradientColors: AppColors.gradientGreen),
            BoxContainer(
                text: "Test 3", gradientColors: AppColors.gradientBlue),
            BoxContainer(
                text: "Test 4", gradientColors: AppColors.gradientPurple),
            BoxContainer(
                text: "Test 5", gradientColors: AppColors.gradientMagenta),
            BoxContainer(
                text: "Test 6", gradientColors: AppColors.gradientPink),
            BoxContainer(text: "Test 7", gradientColors: AppColors.gradientRed),
            BorderContainer(
                text: "Test 8", gradientColors: AppColors.gradientLime),
            const Column(
              children: [
                Text("1. Navigation App Bar"),
                Text("2. Navigation between different screens"),
                Text("3. Heroku API"),
                Text("4. Login Page"),
                Text("5. Authentication"),
                Text("6. Authorize Token"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
