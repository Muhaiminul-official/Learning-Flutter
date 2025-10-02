import 'package:flutter/material.dart';

class LearnSt extends StatefulWidget {
  const LearnSt({super.key});

  @override
  State<LearnSt> createState() => _LearnStState();
}

class _LearnStState extends State<LearnSt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learning Stack")),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              right: 10,
              top: 30,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 17, 195, 106),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Positioned(
              left: -80,
              bottom: -120,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 17, 195, 106),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Positioned(
              right: -80,
              top: -70,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 81, 16),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
