import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

alertAvaliar(BuildContext context, String msg) {
  showDialog(
      context: context,
      builder: (context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: AlertDialog(
              title: Container(
            child: Column(
              children: [
                Text(
                  "Avalie o entregador",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red[900]),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Text('Entregador: nome e sobrenome',
                    style: TextStyle(color: Colors.red[900])),
                Padding(padding: EdgeInsets.only(top: 10)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.star),
                      Icon(FontAwesomeIcons.star),
                      Icon(FontAwesomeIcons.star),
                      Icon(FontAwesomeIcons.star),
                      Icon(FontAwesomeIcons.star),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: Colors.red[900],
                        child: Center(
                          child: Text(
                            "Avaliar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        );
      });
}
