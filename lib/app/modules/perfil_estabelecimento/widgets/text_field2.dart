import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class text_field_meio extends StatelessWidget {
  const text_field_meio({Key key, this.title, this.title2}) : super(key: key);
  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 16.0, bottom: 8.0, left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AutoSizeText(
                title,
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
                maxLines: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        labelText: title2,
                        labelStyle: TextStyle(color: Colors.black),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.red.shade900),
                        ))),
              ),
            ],
          ),
        );
      },
    );
  }
}