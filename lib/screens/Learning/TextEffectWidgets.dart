import 'package:flutter/material.dart';

class HoM extends StatefulWidget {
  const HoM({super.key});

  @override
  State<HoM> createState() => _HoMState();
}

class _HoMState extends State<HoM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Smart Routine Mnanagement System",
          style: TextStyle(
            fontSize: 18,
            fontFamily: "playfair",
            fontWeight: FontWeight.w700,
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        textAlign: TextAlign.justify,
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: "poppins",
          fontWeight: FontWeight.w500,
          color: const Color.fromARGB(255, 16, 12, 107),
          fontSize: 20,
          fontStyle: FontStyle.italic,
          // letterSpacing: 2,
          height: 3,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationThickness: 3,
          shadows: [
            Shadow(color: Colors.black, offset: Offset(5, 7), blurRadius: 10),
          ],
        ),
      ),
    );
  }
}
