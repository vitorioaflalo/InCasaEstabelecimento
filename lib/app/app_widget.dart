import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Slidy',
        theme: ThemeData(
            hintColor: Colors.black,
            primaryColor: Colors.black,
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
              hintStyle: TextStyle(color: Colors.red[300]),
            ))).modular();
  }
}
