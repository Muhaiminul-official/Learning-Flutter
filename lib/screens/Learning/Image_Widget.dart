import 'package:flutter/material.dart';

class ImgWid extends StatelessWidget {
  const ImgWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      // body: Image(
      //   height: 500,
      //     width: 300,
      //     // color: Colors.red,
      //     // fit: BoxFit.cover,
      //     image: AssetImage('assets/Images/Image2.png')),
      //     body:CircleAvatar(
      //       radius: 75,
      //       backgroundColor: Colors.red,
      //
      //       backgroundImage: AssetImage('assets/Images/Image2.png'),
      //     )
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 75,
              backgroundColor: Colors.red,

              backgroundImage: AssetImage('assets/Images/Image2.png'),
            ),
            Image(
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.pexels.com/photos/33117754/pexels-photo-33117754/free-photo-of-charming-balconies-in-andalusian-architecture.jpeg?auto=compress&cs=tinysrgb&w=400&loading=lazy',
              ),
            ),
            // Image(image: AssetImage('assets/Images/Image1.png'))
          ],
        ),
      ),
    );
  }
}
