import 'package:flutter/material.dart';
import 'package:flutter_solattime/shared/borderContainer.dart';
import 'package:flutter_solattime/shared/boxContainer.dart';
import 'package:flutter_solattime/shared/constants.dart';
import 'package:flutter_solattime/shared/iText.dart';

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
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: AppColors.gradientBackground,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text("Title", textAlign: TextAlign.center),
                    const BorderContainer(
                        text: "Test 1", gradientColors: AppColors.gradientBlue),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.home,
                                  color: AppColors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  iText(text: "Current Location Set", size: 16),
                                  iText(
                                      text: "Hijrah Calendar",
                                      color: Colors.grey)
                                ],
                              ),
                            ],
                          ),
                          const Divider(color: AppColors.white),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  iText(text: "Subuh"),
                                  iText(
                                      text: "5:50 AM",
                                      size: 10,
                                      color: Colors.grey),
                                ],
                              ),
                              Column(
                                children: [
                                  iText(text: "Zuhur"),
                                  iText(
                                      text: "1.21 AM",
                                      size: 10,
                                      color: Colors.grey),
                                ],
                              ),
                              Column(
                                children: [
                                  iText(text: "Asar"),
                                  iText(
                                      text: "4.13 AM",
                                      size: 10,
                                      color: Colors.grey),
                                ],
                              ),
                              Column(
                                children: [
                                  iText(text: "Maghrib"),
                                  iText(
                                      text: "7.21 AM",
                                      size: 10,
                                      color: Colors.grey),
                                ],
                              ),
                              Column(
                                children: [
                                  iText(text: "Isyak"),
                                  iText(
                                      text: "8:19 AM",
                                      size: 10,
                                      color: Colors.grey),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const BoxContainer(
                  text: "Test 1", gradientColors: AppColors.gradientLime),
              const BoxContainer(
                  text: "Test 2", gradientColors: AppColors.gradientGreen),
              const BoxContainer(
                  text: "Test 3", gradientColors: AppColors.gradientBlue),
              const BoxContainer(
                  text: "Test 4", gradientColors: AppColors.gradientPurple),
              const BoxContainer(
                  text: "Test 5", gradientColors: AppColors.gradientMagenta),
              const BoxContainer(
                  text: "Test 6", gradientColors: AppColors.gradientPink),
              const BoxContainer(
                  text: "Test 7", gradientColors: AppColors.gradientRed),
              const BorderContainer(
                  text: "Test 8", gradientColors: AppColors.gradientLime),
              Column(
                children: [
                  const Text("1. Navigation App Bar"),
                  const Text("2. Navigation between different screens"),
                  const Text("3. Heroku API"),
                  const Text("4. Login Page"),
                  const Text("5. Authentication"),
                  const Text("6. Authorize Token"),
                  Container(
                    height:
                        10, // It doesnt want to scroll until the last content
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
