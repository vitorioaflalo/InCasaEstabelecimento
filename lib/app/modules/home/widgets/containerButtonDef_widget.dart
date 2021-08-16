import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Widget buildDefContainer({String text, String rota}) {
  return GestureDetector(
    onTap: () {
      if (rota != null) {
        Modular.to.pushNamed('/start$rota');
      }
    },
    child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          color: Color.fromRGBO(208, 84, 85, 1),
          height: 125,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        )),
  );
}
