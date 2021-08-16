import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/acompanharEntregas_store.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/widgets/containerButtonAcompanhar_widget.dart';

class AcompanharEntregasPage extends StatefulWidget {
  final String title;
  const AcompanharEntregasPage({Key key, this.title = 'AcompanharEntregasPage'})
      : super(key: key);
  @override
  AcompanharEntregasPageState createState() => AcompanharEntregasPageState();
}

class AcompanharEntregasPageState extends State<AcompanharEntregasPage> {
  final AcompanharEntregasStore store = Modular.get();

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
          'Acompanhar Solicitação',
          style: TextStyle(color: Colors.red[500], fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              buildContainerButtonAcompanhar(),
              Padding(padding: EdgeInsets.only(top: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
