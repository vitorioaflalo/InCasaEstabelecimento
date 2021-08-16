import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:incasaestabelecimento/app/modules/home/widgets/containerButtonDef_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(30, 100, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildDefContainer(
              text: 'Solicitar Entrega', rota: '/solicitarEntrega/'),
          Padding(padding: EdgeInsets.only(top: 30)),
          buildDefContainer(
              text: 'Acompanhar Entregas', rota: '/acompanharEntregas/'),
          Padding(padding: EdgeInsets.only(top: 30)),
          buildDefContainer(text: 'Histórico', rota: '/historico/'),
          Padding(padding: EdgeInsets.only(top: 30)),
          buildDefContainer(text: 'Relatório', rota: '/relatorio/'),
          Padding(padding: EdgeInsets.only(top: 30)),
        ],
      ),
    ));
  }
}
