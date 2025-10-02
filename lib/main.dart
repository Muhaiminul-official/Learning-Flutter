// import 'package:first_app/screens/home/home_screen.dart';
// import 'package:first_app/screens/home/TextEffectWidgets.dart';
// import 'package:first_app/screens/Learning/button_Widget.dart';
// import 'package:first_app/screens/Learning/colunm_and_row.dart';
// import 'package:first_app/screens/Learning/ClickableWidget.dart';
// import 'package:first_app/screens/Learning/List_view.dart';
// import 'package:first_app/screens/Learning/GrdView.dart';
// import 'package:first_app/screens/Learning/ResposiveUi.dart';
// import 'package:first_app/screens/Learning/Stack.dart';
import 'package:first_app/screens/Learning_02/Drawer.dart';
// import 'package:first_app/screens/Learning/form_validation.dart';
// import 'package:first_app/screens/Learning/text_field.dart';
// import 'package:first_app/screens/Learning/container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return HomeScreen();
    return MaterialApp(
      theme: ThemeData(fontFamily: "poppins"),
      debugShowCheckedModeBanner: false,
      home: DrawerPrac(),
    );
  }
}
