import 'package:flutter/material.dart';

builderText({String text}) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.red[900], fontWeight: FontWeight.bold, fontSize: 16),
  );
}
