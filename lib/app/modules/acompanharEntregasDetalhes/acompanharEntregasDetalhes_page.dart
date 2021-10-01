import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/models/entrega_model.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/helpers/getData_helper.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregasDetalhes/acompanharEntregasDetalhes_store.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/checkbox_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textDef_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textFieldDef_widget.dart';

class AcompanharEntregasDetalhesPage extends StatefulWidget {
  final String title;
  const AcompanharEntregasDetalhesPage(
      {Key key, this.title = 'AcompanharEntregasDetalhesPage'})
      : super(key: key);
  @override
  AcompanharEntregasDetalhesPageState createState() =>
      AcompanharEntregasDetalhesPageState();
}

class AcompanharEntregasDetalhesPageState
    extends State<AcompanharEntregasDetalhesPage> {
  final AcompanharEntregasDetalhesStore store = Modular.get();
  Future<List<EntregaModel>> lista;

  @override
  void initState() {
    super.initState();
    lista = FetchData.getData();
  }

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
          'Acompanhar Solicitação',
          style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<List<EntregaModel>>(
            future: this.lista,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data[1];
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      builderText(text: 'Nome do entregador'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: "Nome completo"),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: "Nome do cliente"),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: data.nomeDoCliente),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Endereço'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: data.logradouro),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Ponto de refêrencia'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: data.pontoDeReferencia),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Telefone'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: data.telefone),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Celular'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: data.celular),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Valor do pedido'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: data.valorDoPedido),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Valor da entrega'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderTextField(hint: data.valorDaEntrega),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Método de Pagamento'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderCheckBox(
                          value: true, text: data.metodoDePagamento),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Carga maior que o Habitual?'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      builderCheckBox(
                          value: false, text: data.cargaMaiorHabitual),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      builderText(text: 'Status: Em rota'),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 60.0,
                            child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red[900]),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Voltar'))),
                      ),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
