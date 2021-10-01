import 'package:dio/dio.dart';
import 'package:incasaestabelecimento/app/models/entrega_model.dart';
import 'package:incasaestabelecimento/app/models/user_model.dart';

class FetchData {
  static Future<List<EntregaModel>>getData() async {

    Response response;

    var dio = Dio();

    try {
      response = await dio.get('http://incasaapi.herokuapp.com/api/entrega/');
      print(response.data.toString());
      final list = response.data;
      List<EntregaModel> listUser = [];
      listUser = list.map<EntregaModel>((item) => EntregaModel.fromJson(item)).toList();
      return listUser;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}