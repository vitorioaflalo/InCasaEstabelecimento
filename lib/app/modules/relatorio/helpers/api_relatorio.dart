import 'package:dio/dio.dart';
import 'package:incasaestabelecimento/app/models/dashboard_model.dart';
import 'package:incasaestabelecimento/app/models/relatorio_model.dart';
import 'package:incasaestabelecimento/app/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<DashboardModel> getEntrega({int mes}) async {
  Response response;
  Response response2;
  var dio = Dio();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int id = prefs.getInt('id');
  try {
    mes = mes ?? DateTime.now().month;
    response2 = await dio.get(
        'https://api-incasa.herokuapp.com/RelatorioEstabelecimento/$mes/$id/');
    print(response.data.toString());
    print(response2.data.toString());
    final list = response.data;
    List<DashboardModel> listDashboard = [];
    listDashboard = list
        .map<DashboardModel>((item) => DashboardModel.fromJson(item))
        .toList();

    return listDashboard.first;
  } on DioError catch (e) {
    print(e);
    return null;
  }
}
