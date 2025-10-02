import 'package:flutter/material.dart';

class ResPrac extends StatefulWidget {
  const ResPrac({super.key});

  @override
  State<ResPrac> createState() => _ResPracState();
}

class _ResPracState extends State<ResPrac> {
  bool isConnected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI Design"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        spacing: 15,
        children: [
          Flexible(
            // Support height
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 23, 122, 122),
              ),
            ),
          ),
          Flexible(
            // Support height, work in both column and listvies
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 23, 122, 122),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 152, 45),
              ),
            ),
          ),
          Expanded(
            // Height doesn't support , Work only column
            flex: 3,

            child: Container(
              width: 100,
              height: 00,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 152, 45),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 152, 45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
