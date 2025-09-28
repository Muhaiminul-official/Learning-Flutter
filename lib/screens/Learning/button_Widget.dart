import 'package:flutter/material.dart';

class BtnWid extends StatefulWidget {
  const BtnWid({super.key});

  @override
  State<BtnWid> createState() => _BtnWidState();
}

class _BtnWidState extends State<BtnWid> {
  bool valTile = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All the Buttons in Flutter"),
        centerTitle: valTile,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print("I am here");
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 24, 118, 74),
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                ),
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
                shadowColor: const Color.fromARGB(255, 143, 243, 146),
              ),
              child: Text("Elevated Button"),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                // same as above
              ),
              onPressed: () {},
              label: Text("Icon Button"),
              icon: Icon(Icons.home),
            ),
            TextButton(
              onPressed: () {},
              onLongPress: () {},
              child: Text("Text button"),
            ),
            IconButton(onPressed: () {}, icon: Icon(
              Icons.home,
              color: Colors.pink,
              size: 50,
            )),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text("Outlined Button"),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              valTile = !valTile;
            });
          },
          child: Icon(Icons.add),
      ),
      
    );
  }
}
