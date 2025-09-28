import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String loginState = "Not Login";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page", style: TextStyle()),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(loginState),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Username",
                  hintText: "Enter your username",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "PassWard",
                  hintText: "Enter your password",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    loginState = "Login Successfully ";
                  });
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
