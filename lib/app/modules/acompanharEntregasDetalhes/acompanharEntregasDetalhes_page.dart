import 'package:flutter_modular/flutter_modular.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              builderText(text: 'Nome do entregador'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Nome completo"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Nome do Cliente'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Nome Completo"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Endereço'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Endereço"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Ponto de refêrencia'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "Refêrencia"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Telefone'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "(00)00000-0000"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Celular'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "(00)00000-0000"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Valor do pedido'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "R\$00,00"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Valor da entrega'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: "R\$00,00"),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Método de Pagamento'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderCheckBox(value: true, text: 'Cartão de Débito/Crédito'),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Carga maior que o Habitual?'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderCheckBox(value: true, text: 'Sim'),
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
                                MaterialStateProperty.all<Color>(Colors.red[900]),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Voltar'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
