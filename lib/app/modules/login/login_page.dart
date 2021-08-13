import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'login_store.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 200, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(padding: EdgeInsets.only(top: 25)),
                TextField(decoration: InputDecoration(hintText: 'Usuário')),
                Padding(padding: EdgeInsets.only(top: 25)),
                TextField(decoration: InputDecoration(hintText: 'Senha')),
                Padding(padding: EdgeInsets.only(top: 25)),
              ],
            ),
            GestureDetector(
              onTap: () {
                Modular.to.navigate('start');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: Colors.red[900],
                  child: Center(
                    child: Text(
                      'ENTRAR',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
