import 'package:flutter/material.dart';

class FormVal extends StatefulWidget {
  const FormVal({super.key});

  @override
  State<FormVal> createState() => _FormValState();
}

class _FormValState extends State<FormVal> {
  TextEditingController name = TextEditingController();
  TextEditingController passward = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  final formkey = GlobalKey<FormState>();

  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 32, 175, 84),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            TextFormField(
              controller: name,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter your Name",
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: () {
                    name.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Name must Required";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShow,
              decoration: InputDecoration(
                hintText: "Enter a passward",
                labelText: "Passward",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isShow = !isShow;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your Email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email),
                suffixIcon: IconButton(
                  onPressed: () {
                    name.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter your Phone Number",
                labelText: "Phone",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: IconButton(
                  onPressed: () {
                    name.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (formkey.currentState!.validate()) {
                    print(name.text);
                  }
                });
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
