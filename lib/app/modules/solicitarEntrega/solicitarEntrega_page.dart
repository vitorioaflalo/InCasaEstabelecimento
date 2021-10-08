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
  int _value = 1;
  int _value2 = 1;
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
  String distancia = '';
  final _nomeClienteController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _pontoReferenciaController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _celularController = TextEditingController();
  final _valorPedidoController = TextEditingController();
  final _valorEntregaController = TextEditingController();
  final _trocoController = TextEditingController();
  final _distanciaController = TextEditingController();
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
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Nome do Cliente',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  nomeCliente = text;
                },
                controller: _nomeClienteController,
                validator: (nomeCliente) {
                  if (nomeCliente == null || nomeCliente.isEmpty) {
                    return 'O campo está vazio ou é inválido';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Endereço'),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Endereço',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  endereco = text;
                },
                controller: _enderecoController,
                validator: (endereco) {
                  if (endereco == null || endereco.isEmpty) {
                    return 'O campo está vazio ou é inválido';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Ponto de refêrencia'),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Referência',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  pontoReferencia = text;
                },
                controller: _pontoReferenciaController,
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Telefone'),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: '(00)00000-0000',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  telefone = text;
                },
                controller: _telefoneController,
                keyboardType: TextInputType.number,
                validator: (telefone) {
                  if (telefone == null || telefone.isEmpty) {
                    return 'O campo está vazio ou é inválido';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Celular'),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: '(00)00000-0000',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  celular = text;
                },
                controller: _celularController,
                keyboardType: TextInputType.number,
                validator: (celular) {
                  if (celular == null || celular.isEmpty) {
                    return 'O campo está vazio ou é inválido';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Valor do pedido'),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'R\$00,00',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  valorPedido = text;
                },
                controller: _valorPedidoController,
                keyboardType: TextInputType.number,
                validator: (valorPedido) {
                  if (valorPedido == null || valorPedido.isEmpty) {
                    return 'O campo está vazio ou é inválido';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Valor da entrega'),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'R\$00,00',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  valorEntrega = text;
                },
                controller: _valorEntregaController,
                keyboardType: TextInputType.number,
                validator: (valorEntrega) {
                  if (valorEntrega == null || valorEntrega.isEmpty) {
                    return 'O campo está vazio ou é inválido';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Distância'),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: '00.00 km',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  distancia = text;
                },
                controller: _distanciaController,
                keyboardType: TextInputType.number,
                validator: (distancia) {
                  if (distancia == null || distancia.isEmpty) {
                    return 'O campo está vazio ou é inválido';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Método de Pagamento'),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value,
                      activeColor: Colors.red[900],
                      hoverColor: Colors.pink,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                  Text(
                    'Cartão',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: _value,
                      activeColor: Colors.red[900],
                      hoverColor: Colors.pink,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                  Text(
                    'Dinheiro',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Troco para'),
              Padding(padding: EdgeInsets.only(top: 20)),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'R\$00,00',
                    hintStyle: TextStyle(color: Colors.black)),
                onChanged: (text) {
                  troco = text;
                },
                controller: _trocoController,
                keyboardType: TextInputType.number,
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              builderText(text: 'Carga maior que o Habitual?'),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value2,
                      activeColor: Colors.red[900],
                      hoverColor: Colors.pink,
                      onChanged: (val) {
                        setState(() {
                          _value2 = val;
                        });
                      }),
                  Text(
                    'Sim',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: _value2,
                      activeColor: Colors.red[900],
                      hoverColor: Colors.pink,
                      onChanged: (val) {
                        setState(() {
                          _value2 = val;
                        });
                      }),
                  Text(
                    'Não',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )
                ],
              ),
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
                                  onPressed: isLoading
                                      ? null
                                      : () async {
                                          setState(() {
                                            isLoading = true;
                                          });
                                          EntregaModel entregaModel;
                                          entregaModel = await entrega(
                                              carga:
                                                  _value2 == 1 ? 'Sim' : 'Não',
                                              celular: _celularController.text,
                                              endereco:
                                                  _enderecoController.text,
                                              nomeCliente:
                                                  _nomeClienteController.text,
                                              pagamento: _value == 1
                                                  ? 'Cartão'
                                                  : 'Dinheiro',
                                              pontoReferencia:
                                                  _pontoReferenciaController
                                                      .text,
                                              telefone:
                                                  _telefoneController.text,
                                              troco: _trocoController.text,
                                              valorEntrega:
                                                  _valorEntregaController.text,
                                              valorPedido:
                                                  _valorPedidoController.text,
                                                  distancia: _distanciaController.text);
                                          setState(() {
                                            isLoading = false;
                                          });
                                          if (entregaModel == null) {
                                            alert(
                                                titulo: 'Erro',
                                                mensagem: 'Erro de conexão',
                                                contextt: context);
                                          } else {
                                            Navigator.of(context).pop();
                                            alert(
                                                titulo: 'Sucesso',
                                                mensagem:
                                                    'Solicitação feita com sucesso',
                                                contextt: context);
                                          }
                                        },
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
