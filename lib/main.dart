import 'package:flutter/material.dart';
import 'package:flutter_solattime/shared/boxContainer.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Testusng Title",
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
          backgroundColor: const Color(0xFF2C423E),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF16222D),
              Color(0xFF2C423E),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topCenter,
          )),
          child: const Column(
            children: [
              BoxContainer(text: "Test 1", color: Colors.green),
              BoxContainer(text: "Test 2", color: Colors.orange),
              BoxContainer(text: "Test 3", color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
