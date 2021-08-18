import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/modules/perfil_estabelecimento/widgets/botao.dart';
import 'package:incasaestabelecimento/app/modules/perfil_estabelecimento/widgets/text_field.dart';
import 'package:incasaestabelecimento/app/modules/perfil_estabelecimento/widgets/text_field2.dart';

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
            shadowColor: Colors.red[900],
            backgroundColor: Colors.white,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.red[900],
                )),
            title: Text(
              'Perfil',
              style: TextStyle(
                  color: Colors.red[900], fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
            child: LayoutBuilder(
    builder: (_, constraints) {
      return Column(
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
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                  child: text_field_meio(
                      title: 'Telefone', title2: 'Telefone')),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.5,
                child: text_field_meio(title: 'Celular', title2: 'Celular'),)
            ],
          ),
          text_field(title: 'E-mail', title2: 'e-mail'),
          Row(
            children: [
              Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                  child: text_field_meio(
                      title: 'Responsável', title2: 'Telefone')),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.5,
                child: text_field_meio(title: 'Telefone', title2: 'Telefone'),)
            ],
          ),
          text_field(title: 'E-mail', title2: 'e-mail'),
          Row(
            children: [
              Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                  child: text_field_meio(title: 'Banco', title2: 'Banco')),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.5,
                child: text_field_meio(
                    title: 'Tipo de Conta/Operação', title2: 'Tipo'),)
            ],
          ),
          Row(
            children: [
              Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                  child: text_field_meio(title: 'Agência', title2: 'Agência')),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.5,
                child: text_field_meio(title: 'Nº da conta', title2: 'número'),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
            child: Botao(),
          ),
        ],
      );
    }
            )));
  }
}





