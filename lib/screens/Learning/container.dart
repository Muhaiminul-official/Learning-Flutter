import 'package:flutter/material.dart';

class ConWid extends StatelessWidget {
  const ConWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 132, 102, 13),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Container(
          //   height: 200,
          //   width: 300,

          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 22, 176, 24),
          //     border: Border.all(color: Colors.red, width: 5),
          //   ),
          //   child: Column(
          //     children: [
          //       Text("Hello, I am Muhaiminul Isalm"),
          //       Container(
          //         height: 150,
          //         width: 150,
          //         decoration: BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.circular(100),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: 300,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //     boxShadow: [
          //       BoxShadow(
          //         color: const Color.fromARGB(77, 12, 237, 16),
          //         blurRadius: 10,
          //         offset: Offset(100, 100),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            width: 200,
            height: 300,
            color: Colors.red,
            // margin: EdgeInsets.all(20),
            // padding: EdgeInsets.all(30),
            // margin: EdgeInsets.only(top:20,left: 30),
            // padding: EdgeInsets.only(top: 20, left: 30),
            margin: EdgeInsets.fromLTRB(30, 20, 10, 5),
            padding: EdgeInsets.fromLTRB(30, 20, 10, 5),

            child: Container(
                    width: 200,
                    height: 300,
                    color: Colors.blue,
            ),
          ),
          Container(
            height: 300,
            width: 300,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              // color: Colors.amber,
              image: DecorationImage(
                image:NetworkImage("https://www.pexels.com/photo/serene-forest-path-in-misty-artvin-turkiye-33502020/"),
                fit: BoxFit.cover
                ),
            ),
          )
        ],
      ),
    );
  }
}
