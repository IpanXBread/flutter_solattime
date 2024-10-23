import 'package:flutter/material.dart';
import 'package:flutter_solattime/core/constants/constants.dart';
import 'package:flutter_solattime/core/widgets/borderContainer.dart';
import 'package:flutter_solattime/core/widgets/boxContainer.dart';
import 'package:flutter_solattime/core/widgets/iText.dart';
import 'package:flutter_solattime/core/widgets/squareContainer.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              color: AppColors.background2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Location Setting
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const iText(
                          text: "Location Setting",
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        BorderContainer(
                          gradientColors: AppColors.gradientBlue,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                iText(text: "Set current location..."),
                                Icon(Icons.settings, color: AppColors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // General Setting
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        iText(
                          text: "General Setting",
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        SquareContainer(
                          children: [
                            iText(text: "24-hour format"),
                            Icon(Icons.settings, color: AppColors.white),
                          ],
                        ),
                        SquareContainer(
                          children: [
                            iText(text: "Show activity details in home screen"),
                            Icon(Icons.settings, color: AppColors.white),
                          ],
                        ),
                        SquareContainer(
                          children: [
                            iText(text: "GPS Location"),
                            Icon(Icons.swap_horizontal_circle_sharp, color: AppColors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Default Setting - Activity
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const iText(
                          text: "Default Setting - Activity",
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        BorderContainer(
                          gradientColors: AppColors.gradientBlue,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                iText(text: "Set current location..."),
                                Icon(Icons.settings, color: AppColors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Default Setting - Waktu Solat
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const iText(
                          text: "Default Setting - Waktu Solat",
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        BorderContainer(
                          gradientColors: AppColors.gradientBlue,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                iText(text: "Set current location..."),
                                Icon(Icons.settings, color: AppColors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Save"),
                ],
              ))),
    );
  }
}
