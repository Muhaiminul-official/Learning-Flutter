import 'package:flutter/material.dart';

class ClickableWid extends StatefulWidget {
  const ClickableWid({super.key});

  @override
  State<ClickableWid> createState() => _ClickableWidState();
}

class _ClickableWidState extends State<ClickableWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clickable Widget"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                print("I am clicking a container using getureDetector Object");
              });
            },
            child: Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
          ),
          InkWell(
            onDoubleTap: () {
              setState(() {
                print(
                  "InkWll Show the effect of click in a container or a object , on the otherhand gestureDectector cannot show the effect as well. "
                );
              });
            },
            child: Text("Click Me",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,backgroundColor: Colors.green),)
          ),
        ],
      ),
    );
  }
}
