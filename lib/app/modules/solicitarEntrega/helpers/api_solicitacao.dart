import 'package:dio/dio.dart';
import 'package:incasaestabelecimento/app/models/entrega_model.dart';
import 'package:incasaestabelecimento/app/models/login_model.dart';

Future<EntregaModel> entrega(
    {String nomeCliente,
    String endereco,
    String pontoReferencia,
    String telefone,
    String celular,
    String valorPedido,
    String valorEntrega,
    String pagamento,
    String troco,
    String carga,
    String distancia}) async {
  var dio = Dio();
  Response response;
  EntregaModel entregaModel;
  try {
    response =
        await dio.post('https://api-incasa.herokuapp.com/api/entrega/', data: {
      'Nome_ do_Cliente': nomeCliente,
      'Logradouro': endereco,
      'Ponto_de_Referencia': pontoReferencia,
      'Telefone': telefone,
      'Celular': celular,
      'Valor_do_Pedido': valorPedido,
      'Valor_da_Entrega': valorEntrega,
      'Distancia': distancia,
      'Metodo_de_Pagamento': pagamento,
      'Troco': troco,
      'Carga_Maior_Habitual': carga
    });

    return entregaModel = EntregaModel.fromJson(response.data);
  } on DioError catch (_) {
    return null;
  }
}
