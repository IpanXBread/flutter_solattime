import 'package:flutter/material.dart';
import 'package:flutter_solattime/core/constants/constants.dart';
import 'package:flutter_solattime/core/widgets/borderContainer.dart';
import 'package:flutter_solattime/core/widgets/boxContainer.dart';
import 'package:flutter_solattime/core/widgets/iText.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // White Container
                Positioned(
                  bottom: -400,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 500,
                    color: AppColors.white,
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
                  bottom: -100,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(15),
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
