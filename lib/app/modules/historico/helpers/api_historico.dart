import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/models/entrega_model.dart';
import 'package:incasaestabelecimento/app/models/entregador_model.dart';
import 'package:incasaestabelecimento/app/models/historico_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<HistoricoModel>> getUsers() async {
  Response response;
  Response response2;
  var dio = Dio();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int id = prefs.getInt('id');
  print(id);

  try {
    response = await dio.get(
        'https://api-incasa.herokuapp.com/api/entrega/?id=&Estabelecimento=$id');
    response2 = await dio
        .get('https://api-incasa.herokuapp.com/api/usuarioentregador/');
    print(response.data.toString());
    print(response2.data.toString());
    final list = response.data;
    final list2 = response2.data;
    List<EntregaModel> listUser = [];
    List<EntregadorModel> listEntregador = [];
    List<HistoricoModel> listHistorico = [];
    listEntregador = list2
        .map<EntregadorModel>((item) => EntregadorModel.fromJson(item))
        .toList();
    listUser =
        list.map<EntregaModel>((item) => EntregaModel.fromJson(item)).toList();

    for (int i = 0; i < listUser.length; i++) {
      for (int e = 0; e < listEntregador.length; e++) {
        if (listUser[i].entregador == listEntregador[e].user) {
          listHistorico.add(HistoricoModel(
            listEntregador[e].nomeCompleto,
            listUser[i].createdAt,
            listUser[i].status,
            listUser[i].avaliacao,
            listUser[i].nomeDoCliente,
            listUser[i].logradouro,
            listUser[i].pontoDeReferencia,
            listUser[i].telefone,
            listUser[i].valorDoPedido,
            listUser[i].valorDaEntrega,
            listUser[i].metodoDePagamento,
            listUser[i].cargaMaiorHabitual,
            listUser[i].celular,
          ));
        }
      }
    }
    return listHistorico;
  } on DioError catch (e) {
    if (e.response.statusCode == 400) {
      List<HistoricoModel> lista = [];
      lista.add(
          HistoricoModel('', '', '', '', '', '', '', '', '', '', '', '', ''));
      return lista;
    }
    print(e);
    return null;
  }
}
