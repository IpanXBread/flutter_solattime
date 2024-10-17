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
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text("Title", textAlign: TextAlign.center),
                    BoxContainer(
                        text: "Test 1", gradientColors: AppColors.gradientLime),
                    Container(
                      child: const Row(
                        children: [
                          Column(
                            children: [
                              Text("Subuh"),
                              Text("Timer Subuh"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Zuhur"),
                              Text("Timer Zuhur"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Asar"),
                              Text("Timer Asar"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Maghrib"),
                              Text("Timer Maghrib"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Isyak"),
                              Text("Timer Isyak"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
              BoxContainer(
                  text: "Test 7", gradientColors: AppColors.gradientRed),
              BorderContainer(
                  text: "Test 8", gradientColors: AppColors.gradientLime),
              Column(
                children: [
                  Text("1. Navigation App Bar"),
                  Text("2. Navigation between different screens"),
                  Text("3. Heroku API"),
                  Text("4. Login Page"),
                  Text("5. Authentication"),
                  Text("6. Authorize Token"),
                  Container(
                    height: 10, // It doesnt want to scroll until the last content
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
