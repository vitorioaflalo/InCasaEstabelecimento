import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class entregas extends StatelessWidget {
  String text;
  entregas ({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.only(top: 24, left: 8.0),
      child: Row(
        children: [
          AutoSizeText(
            text,
            style: TextStyle(fontSize: 18, color: Colors.red.shade900, fontWeight: FontWeight.bold),
            maxLines: 2,
          ),
          AutoSizeText('R\$: XXXX,XX', style: TextStyle(fontSize: 18), maxLines: 1,)
        ],
      ),
    );
  }
}