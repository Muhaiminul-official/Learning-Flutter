import 'package:flutter/material.dart';

class LstView extends StatefulWidget {
  const LstView({super.key});

  @override
  State<LstView> createState() => _LstViewState();
}

class _LstViewState extends State<LstView> {
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Practice"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 10, 223, 145),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                title: Text("Muhaiminul Islam"),
                subtitle: Text("SoftWare Engineer"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/156056627?v=4',
                  ),
                  backgroundColor: Colors.blueGrey,
                ),
                trailing: Icon(Icons.person),
                tileColor: Colors.blue.withOpacity(0.5),
              ),
            ),
          for (int i in num)
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: i % 2 == 0
                    ? Color.fromARGB(255, 23, 190, 84)
                    : const Color.fromARGB(255, 195, 26, 91),
              ),
              child: Center(
                child: Text(
                  i.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ...num.map((elem) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: elem % 2 == 0
                    ? Color.fromARGB(255, 26, 175, 61)
                    : Colors.amberAccent,
              ),
              child: Center(
                child: Text(
                  elem.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
