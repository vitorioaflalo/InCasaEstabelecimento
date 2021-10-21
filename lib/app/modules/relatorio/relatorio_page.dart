import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/models/dashboard_model.dart';
import 'package:incasaestabelecimento/app/modules/relatorio/helpers/api_relatorio.dart';
import 'widgets/dropdown.dart';
import 'widgets/grafico/grafico.dart';
import 'widgets/valores_entregas.dart';

class RelatorioPage extends StatefulWidget {
  const RelatorioPage({Key key}) : super(key: key);

  @override
  _RelatorioPageState createState() => _RelatorioPageState();
}

class _RelatorioPageState extends State<RelatorioPage> {
  Future<DashboardModel> entrega;
  DashboardModel dashboardModel;
  int mes;
  void getLista(int mes) async {
    entrega = getEntrega(mes: mes);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getLista(mes);
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
                color: Colors.red[500],
              )),
          title: Text(
            'Relatório',
            style:
                TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 8.0),
          child: LayoutBuilder(
            builder: (_, constraints) {
              return FutureBuilder<DashboardModel>(
                  future: entrega,
                  builder: (context, snapshot) {
                    if (snapshot.data == null) {
                      return Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                snapshot.data.tarifaEntrega,
                                style: TextStyle(
                                    color: Colors.red.shade900, fontSize: 25),
                              ),
                              Text(
                                'Mês:',
                                style: TextStyle(
                                    color: Colors.red.shade900, fontSize: 20),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey,
                                      style: BorderStyle.solid,
                                      width: 1.2),
                                ),
                                child: DropDown_meses(
                                  onChanged: (int mes) {
                                    getLista(mes);
                                  },
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: Grafico(snapshot.data),
                          ),
                          entregas(
                              text: 'Valor total de entregas:',
                              value: snapshot.data.total.toString() ??
                                  "Indisponível"),
                          entregas(
                              text: 'Tarifa mensal a ser paga:',
                              value:
                                  snapshot.data.tarifaMensal ?? "Indisponível"),
                          entregas(
                              text: 'Tarifa por entrega a ser paga:',
                              value: snapshot.data.tarifaEntrega ??
                                  "Indisponível"),
                          entregas(
                              text: 'Valor a ser pago ao inCasa:',
                              value: snapshot.data.total.toString() ??
                                  "Indisponível"),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 24, left: 8.0, bottom: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Valor total de entregas + tarifa do aplicativo',
                                  style: TextStyle(color: Colors.red.shade900),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  });
            },
          ),
        ),
      ),
    );
  }
}
