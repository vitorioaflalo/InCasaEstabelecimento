import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/models/login_model.dart';
import 'package:incasaestabelecimento/app/modules/login/helpers/api_service.dart';
import 'package:incasaestabelecimento/app/modules/login/login_store.dart';
import 'package:incasaestabelecimento/app/modules/login/widgets/alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = 'LoginPage'}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  final LoginStore store = Modular.get();
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 200, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Form(
                key: _formkey,
                child: Center(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 25)),
                        isLoading ? Center(child: CircularProgressIndicator()) : Text(''),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.red[900]),
                             ),
                          onChanged: (text) {
                            email = text;
                          },
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (email) {
                            if (email == null ||
                                email.isEmpty ||
                                !email.contains('@')) {
                              return 'Email inválido';
                            }
                            return null;
                          },
                        ),
                        Padding(padding: EdgeInsets.only(top: 25)),
                        TextFormField(
                          obscureText: true,
                            decoration: InputDecoration(
                              
                                labelText: 'Senha',
                                labelStyle: TextStyle(color: Colors.red[900])),
                            controller: _passwordController,
                            onChanged: (text) {
                              senha = text;
                            },
                            keyboardType: TextInputType.text,
                            validator: (senha) {
                              if (senha == null || senha.isEmpty) {
                                return 'Digite sua senha';
                              }
                              return null;
                            }),
                        Padding(padding: EdgeInsets.only(top: 25)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
      
                            ),
                              primary: Colors.red[900]),
                          onPressed: isLoading
                              ? null
                              : () async {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  LoginModel loginModel;
                                  loginModel = await login(
                                      email: _emailController.text,
                                      password: _passwordController.text);
                                  setState(() {
                                    isLoading = false;
                                  });
                                  if (loginModel == null) {
                                    alert(
                                        titulo: 'Erro',
                                        mensagem: 'Erro de conexão',
                                        contextt: context);
                                  } else {
                                    if (loginModel.status == 'certo') {
                                      SharedPreferences prefs =
                                          await SharedPreferences.getInstance();

                                      prefs.setString(
                                          'token', loginModel.token ?? '');
                                            prefs.setInt('id', loginModel.userId);
                                      Modular.to.navigate('/start');
                                    } else {
                                      alert(
                                          titulo: 'Erro',
                                          mensagem: 'Credenciais inválidas',
                                          contextt: context);
                                    }
                                  }
                                },
                         child: Text(
                            'ENTRAR',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
