import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/models/entrega_model.dart';
import 'package:incasaestabelecimento/app/models/historico_model.dart';
import 'package:incasaestabelecimento/app/modules/historicoDetalhes/widgets/alertAvaliar_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/checkbox_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textDef_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textFieldDef_widget.dart';
import 'package:incasaestabelecimento/app/modules/historicoDetalhes/helpers/getUsers_helper.dart';

import 'historicoDetalhes_store.dart';

class HistoricoDetalhesPage extends StatefulWidget {
  final String title;
  final HistoricoModel historicoaModel;
  const HistoricoDetalhesPage(this.historicoaModel, {Key key, this.title = 'HistoricoDetalhesPage'})
      : super(key: key);
  @override
  HistoricoDetalhesPageState createState() => HistoricoDetalhesPageState();
}

class HistoricoDetalhesPageState extends State<HistoricoDetalhesPage> {
  final HistoricoDetalhesStore store = Modular.get();
  
  @override
  void initState() {
    super.initState();
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
            'Avaliar entrega',
            style:
                TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        builderText(text: 'Nome do entregador'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoaModel.nomeCompleto ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Nome do Cliente'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoaModel.nomeDoCliente ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Endereço'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoaModel.logradouro ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Ponto de refêrencia'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoaModel.pontoDeReferencia ?? "Indisponível" ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Telefone'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoaModel.telefone ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Celular'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoaModel.celular ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Valor do pedido'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: 'R\$ ${widget.historicoaModel.valorDaEntrega} ' ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Valor da entrega'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: 'R\$ ${widget.historicoaModel.valorDaEntrega} ' ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Método de Pagamento'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderCheckBox(
                            value: true, text: widget.historicoaModel.metodoDePagamento.toString() ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Carga maior que o Habitual?'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderCheckBox(value: true, text: widget.historicoaModel.cargaMaiorHabitual.toString() ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Status: ${widget.historicoaModel.status.toString()}' ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        ListTile(
                            title: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                    child: Container(
                                        height: 60.0,
                                        child: TextButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.red[900]),
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.white)),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Voltar'))))),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                    child: Container(
                                        height: 60.0,
                                        child: TextButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Colors.green[900]),
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.white)),
                                            onPressed: () {
                                              alertAvaliar(context, "a");
                                            },
                                            child: Text('Avaliar')))))
                          ],
                        ))
                      ],
                    ),
            ),
        ),
    );
  }
}
