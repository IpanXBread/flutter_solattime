import 'package:flutter/material.dart';
import 'package:flutter_solattime/core/widgets/borderContainer.dart';
import 'package:flutter_solattime/core/widgets/boxContainer.dart';
import 'package:flutter_solattime/core/constants/constants.dart';
import 'package:flutter_solattime/core/widgets/iText.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        scrolledUnderElevation: 0,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                // White Container
                Container(
                  // height: MediaQuery.of(context).size.height,
                  height: 3000,
                  color: AppColors.background2,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 350.0),
                        child: Column(),
                      ),
                      const BoxContainer(
                          text: "Test 1",
                          gradientColors: AppColors.gradientLime),
                      const BoxContainer(
                          text: "Test 2",
                          gradientColors: AppColors.gradientGreen),
                      const BoxContainer(
                          text: "Test 3",
                          gradientColors: AppColors.gradientBlue),
                      const BoxContainer(
                          text: "Test 4",
                          gradientColors: AppColors.gradientPurple),
                      const BoxContainer(
                          text: "Test 5",
                          gradientColors: AppColors.gradientMagenta),
                      const BoxContainer(
                          text: "Test 6",
                          gradientColors: AppColors.gradientPink),
                      const BoxContainer(
                          text: "Test 7",
                          gradientColors: AppColors.gradientRed),
                      const BorderContainer(
                        gradientColors: AppColors.gradientLime,
                        child: Text("Test 8"),
                      ),
                    ],
                  ),
                ),
                // Dark Container
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset('assets/images/solatTime1.png'),
                      ),
                    ],
                  ),
                ),
                // Location Contation
                Positioned(
                  bottom: 2650,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(15),
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
                                    text: "Hijrah Calendar", color: Colors.grey)
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

