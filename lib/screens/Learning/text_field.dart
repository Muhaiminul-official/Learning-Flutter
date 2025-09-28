import 'package:flutter/material.dart';

class TxtField extends StatefulWidget {
  const TxtField({super.key});

  @override
  State<TxtField> createState() => _TxtFieldState();
}

class _TxtFieldState extends State<TxtField> {
  var status = "Not Login";
  TextEditingController name = TextEditingController();
  TextEditingController passward = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FlutterLogo(size: 100),
            Text("Login Status: $status "),
            SizedBox(height: 50),
            TextField(
              controller: name,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter Your name",
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      name.clear();
                      print("object");
                    });
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passward,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Enter Your passward",
                labelText: "Passward",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passward.clear();
                    });
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                hintText: "Enter Your Message",
                labelText: "Text Field",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.message),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passward.clear();
                    });
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  status = "Login Success";
                  print(status);
                });
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(160, 40),
                elevation: 15,
                shadowColor: Colors.blue,
              ),

              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
