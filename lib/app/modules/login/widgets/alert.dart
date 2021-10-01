import 'package:flutter/material.dart';

alert(
    {BuildContext contextt,
     String mensagem,
     String titulo}) {
  showDialog(
      context: contextt,
      builder: (context) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(mensagem),
          actions: <Widget>[
            // ignore: deprecated_member_use
            FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        );
      });
}
