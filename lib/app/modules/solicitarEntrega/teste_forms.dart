import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/models/entrega_model.dart';
import 'package:incasaestabelecimento/app/modules/login/widgets/alert.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/checkbox_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textDef_widget.dart';
import 'package:incasaestabelecimento/app/modules/shared/widgets/textFieldDef_widget.dart';
import 'package:incasaestabelecimento/app/modules/solicitarEntrega/helpers/api_solicitacao.dart';
import 'package:incasaestabelecimento/app/modules/solicitarEntrega/solicitarEntrega_store.dart';
import 'package:flutter/material.dart';


class SolicitarEntregaPage extends StatefulWidget {
  final String title;
  const SolicitarEntregaPage({Key key, this.title = 'SolicitarEntregaPage'})
      : super(key: key);
  @override
  SolicitarEntregaPageState createState() => SolicitarEntregaPageState();
}

class SolicitarEntregaPageState extends State<SolicitarEntregaPage> {
  String nomeCliente = '';
  String endereco = '';
  String pontoReferencia = '';
  String telefone = '';
  String celular = '';
  String valorPedido = '';
  String valorEntrega = '';
  String pagamento = '';
  String troco = '';
  String carga = '';
  final _nomeClienteController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _pontoReferenciaController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _celularController = TextEditingController();
  final _valorPedidoController = TextEditingController();
  final _valorEntregaController = TextEditingController();
  final _pagamentoController = TextEditingController();
  final _trocoController = TextEditingController();
  final _cargaController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isLoading = false;
  final SolicitarEntregaStore store = Modular.get();

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
          'Solicitar entrega',
          style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              builderText(text: 'Nome do Cliente'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: 'Nome do cliente'),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Endereço'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderTextField(hint: 'Endereço'),
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
              builderCheckBox(value: false, text: 'Dinheiro'),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Carga maior que o Habitual?'),
              Padding(padding: EdgeInsets.only(top: 10)),
              builderCheckBox(value: true, text: 'Sim'),
              builderCheckBox(value: false, text: 'Não'),
              Padding(padding: EdgeInsets.only(top: 30)),
              isLoading ? Center(child: CircularProgressIndicator()) : Text(''),
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
                                          MaterialStateProperty.all<Color>(
                                              Colors.red[900]),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancelar'))))),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                          child: Container(
                              height: 60.0,
                              child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green[900]),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  onPressed: () {},
                                  child: Text('Solicitar')))))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
