import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/models/entrega_model.dart';
import 'package:incasaestabelecimento/app/models/historico_model.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/helpers/getData_helper.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregasDetalhes/acompanharEntregasDetalhes_store.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/checkbox_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textDef_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textFieldDef_widget.dart';

class AcompanharEntregasDetalhesPage extends StatefulWidget {
  final String title;
  final HistoricoModel historicoModel;
  const AcompanharEntregasDetalhesPage(
    this.historicoModel,
      {Key key, this.title = 'AcompanharEntregasDetalhesPage'})
      : super(key: key);
  @override
  AcompanharEntregasDetalhesPageState createState() =>
      AcompanharEntregasDetalhesPageState();
}

class AcompanharEntregasDetalhesPageState
    extends State<AcompanharEntregasDetalhesPage> {
  final AcompanharEntregasDetalhesStore store = Modular.get();


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
          'Acompanhar Solicitação',
          style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
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
                        builderTextField(hint: widget.historicoModel.nomeCompleto ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: "Nome do cliente"),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoModel.nomeDoCliente ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Endereço'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoModel.logradouro ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Ponto de refêrencia'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoModel.pontoDeReferencia ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Telefone'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoModel.telefone ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Celular'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoModel.celular ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Valor do pedido'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoModel.valorDoPedido ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Valor da entrega'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderTextField(hint: widget.historicoModel.valorDaEntrega?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Método de Pagamento'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderCheckBox(
                            value: true, text: widget.historicoModel.metodoDePagamento ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Carga maior que o Habitual?'),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        builderCheckBox(
                            value: false, text: widget.historicoModel.cargaMaiorHabitual ?? "Indisponível"),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        builderText(text: 'Status: ${widget.historicoModel.status}' ?? "Indisponível"),
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
        ),
                ));
  }
}
