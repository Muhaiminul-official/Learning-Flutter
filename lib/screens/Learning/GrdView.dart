import 'package:flutter/material.dart';

class Grdview extends StatefulWidget {
  const Grdview({super.key});

  @override
  State<Grdview> createState() => _GrdviewState();
}

class _GrdviewState extends State<Grdview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.cyanAccent,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          for (int i = 0; i < 10; i++)
            Container(width: 200, height: 200, color: Colors.amber),
          Image.network(
            "https://myrightbird.com/assets/uploads/mybird_sun_conure_on_perch-900x651.jpg",
          ),
        ],
      ),
    );
  }
}
