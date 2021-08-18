import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
        child: SizedBox(
          width: constraints.maxWidth * 0.5,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.red.shade900),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
            child: Text(
              'Voltar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            onPressed: () {},
          ),
        ),
      );
    });
  }
}
