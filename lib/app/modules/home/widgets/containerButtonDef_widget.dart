import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Widget buildDefContainer(BoxConstraints constraints, {String text, String rota, } ) {
  return GestureDetector(
    onTap: () {
      if (rota != null) {
        Modular.to.pushNamed('/start$rota');
      }
    },
    child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: constraints.maxHeight*0.2,
          color: Color.fromRGBO(208, 84, 85, 1),
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