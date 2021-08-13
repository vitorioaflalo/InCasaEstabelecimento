import 'package:flutter/material.dart';

builderText({String text}) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.red[500], fontWeight: FontWeight.bold, fontSize: 16),
  );
}
