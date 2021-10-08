import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/models/historico_model.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/acompanharEntregas_store.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/helpers/getData_helper.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/widgets/containerButtonAcompanhar_widget.dart';
import 'package:incasaestabelecimento/app/modules/historico/helpers/api_historico.dart';

class AcompanharEntregasPage extends StatefulWidget {
  final String title;
  const AcompanharEntregasPage({Key key, this.title = 'AcompanharEntregasPage'})
      : super(key: key);
  @override
  AcompanharEntregasPageState createState() => AcompanharEntregasPageState();
}

class AcompanharEntregasPageState extends State<AcompanharEntregasPage> {
  final AcompanharEntregasStore store = Modular.get();
  List<HistoricoModel> entrega;

  Future<List<HistoricoModel>> getLista() async {
    entrega = await getEntregas();
    return entrega;
  }

  @override
  void initState() {
    super.initState();
  }

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
            'Acompanhar Solicitação',
            style:
                TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: LayoutBuilder(builder: (_, constraints) {
            return FutureBuilder<List<HistoricoModel>>(
                future: getLista(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else if (snapshot.data.isEmpty) {
                    return Center(
                        child: Column(
                      children: [
                        Icon(Icons.dangerous_outlined,
                            color: Colors.red[900], size: 40),
                        Text('Seu usuário não possui solicitações de entrega',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.red[900],
                              fontSize: 20,
                            )),
                      ],
                    ));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, index) {
                        if (snapshot.data[index].status == "Em percurso") {
                          return buildContainerButtonAcompanhar(
                                  snapshot.data[index]);
                        }
                        return null;
                      },
                    );
                  }
                });
          }),
        ));
  }
}
