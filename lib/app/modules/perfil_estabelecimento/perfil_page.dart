import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  final String title;

  const PerfilPage({Key key, this.title = 'PerfilPage'}) : super(key: key);

  @override
  PerfilPageState createState() => PerfilPageState();
}

class PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            shadowColor: Colors.red[500],
            backgroundColor: Colors.white,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.red[500],
                )),
            title: Text(
              'Perfil',
              style: TextStyle(
                  color: Colors.red[900], fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
            child: Column(
          children: [
            text_field(
              title: 'Razão Social',
              title2: 'Razão Social ',
            ),
            text_field(title: 'Endereço', title2: 'Endereço'),
            text_field(title: 'CNPJ', title2: 'CNPJ'),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width *0.5,
                    child: text_field_meio(title: 'Telefone', title2: 'Telefone')),
                Container(
                  width: MediaQuery.of(context).size.width *0.5,
                  child: text_field_meio(title: 'Celular', title2: 'Celular'),)
              ],
            ),
            text_field(title: 'E-mail', title2: 'e-mail'),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width *0.5,
                    child: text_field_meio(title: 'Responsável', title2: 'Telefone')),
                Container(
                  width: MediaQuery.of(context).size.width *0.5,
                  child: text_field_meio(title: 'Telefone', title2: 'Telefone'),)
              ],
            ),
            text_field(title: 'E-mail', title2: 'e-mail'),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width *0.5,
                    child: text_field_meio(title: 'Banco', title2: 'Banco')),
                Container(
                  width: MediaQuery.of(context).size.width *0.5,
                  child: text_field_meio(title: 'Tipo de Conta/Operação', title2: 'Tipo'),)
              ],
            ),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width *0.5,
                    child: text_field_meio(title: 'Agência', title2: 'Agência')),
                Container(
                  width: MediaQuery.of(context).size.width *0.5,
                  child: text_field_meio(title: 'Nº da conta', title2: 'número'),)
              ],
            ),
            Botao(),
          ],
        )));
  }
}

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

class text_field extends StatelessWidget {
  const text_field({Key key, this.title, this.title2}) : super(key: key);
  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        labelText: title2,
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.red.shade900),
                        ))),
              ),
            ],
          ),
        );
      },
    );
  }
}

class text_field_meio extends StatelessWidget {
  const text_field_meio({Key key, this.title, this.title2}) : super(key: key);
  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        labelText: title2,
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
