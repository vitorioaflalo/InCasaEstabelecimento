import 'package:flutter/material.dart';

builderCheckBox({String text, bool value}) {
  return Row(
    children: [
      Radio(
        hoverColor: Colors.pink,
        groupValue: value,
        activeColor: Colors.red[600],
        value: true,
        onChanged: (value) {},
      ),
      Text(
        text,
        style: TextStyle(
            color: Colors.red[500], fontWeight: FontWeight.bold, fontSize: 14),
      )
    ],
  );
}
