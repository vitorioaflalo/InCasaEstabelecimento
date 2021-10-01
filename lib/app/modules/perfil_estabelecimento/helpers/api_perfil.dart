import 'package:dio/dio.dart';

import 'package:incasaestabelecimento/app/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<PerfilModel> getUser() async {
  Response response;

  var dio = Dio();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int id = prefs.getInt('id');
  try {
    response = await dio.get(
        'https://api-incasa.herokuapp.com/api/usuarioestabelecimento/?id=&User=$id');
    print(response.data.toString());
    final list = response.data;
    List<PerfilModel> listUser = [];
    listUser =
        list.map<PerfilModel>((item) => PerfilModel.fromJson(item)).toList();
    return listUser.first;
  } on DioError catch (e) {
    print(e);
    return null;
  }
}
