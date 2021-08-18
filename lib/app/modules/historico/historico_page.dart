import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/historico/widgets/containerButton_widget.dart';

import 'historico_store.dart';

class HistoricoPage extends StatefulWidget {
  final String title;
  const HistoricoPage({Key key, this.title = 'HistoricoPage'})
      : super(key: key);
  @override
  HistoricoPageState createState() => HistoricoPageState();
}

class HistoricoPageState extends State<HistoricoPage> {
  final HistoricoStore store = Modular.get();

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
              color: Colors.red[900],
            )),
        title: Text(
          'Histórico de entregas',
          style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonHistorico(),
              Padding(padding: EdgeInsets.only(top: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
