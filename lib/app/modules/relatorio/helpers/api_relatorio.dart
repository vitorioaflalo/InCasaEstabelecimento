import 'package:dio/dio.dart';
import 'package:incasaestabelecimento/app/models/dashboard_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<DashboardModel> getEntrega({int mes}) async {
  Response response;
  var dio = Dio();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int id = prefs.getInt('id');
  try {
    mes = mes ?? DateTime.now().month;
    response = await dio.get(
        'https://api-incasa.herokuapp.com/RelatorioEstabelecimento/$mes/$id/');

    DashboardModel dashboardModel = DashboardModel.fromJson(response.data);

    return dashboardModel;
  } on DioError catch (e) {
    print(e);
    return null;
  }
}
