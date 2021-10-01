import 'package:flutter/material.dart';

builderTextField({
  TextEditingController textEditingController,
  String hint,
  String tipoValidacao,
}) {
  return TextFormField(
    controller: textEditingController,
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: '$hint', hintStyle: TextStyle(color: Colors.black)),
  );
}
