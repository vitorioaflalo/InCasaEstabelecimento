import 'package:dio/dio.dart';
import 'package:incasaestabelecimento/app/models/login_model.dart';

Future<LoginModel> login({String email, String password}) async {
  var dio = Dio();
  Response response;
  LoginModel loginModel;
  try {
    response = await dio.post('https://api-incasa.herokuapp.com/api/login/',
        data: {'username': email, 'password': password});
    if (response.statusCode == 200) {
      loginModel = LoginModel.fromJson(response.data, 'certo');
    } else {
      loginModel = null;
    }
  } on DioError catch (e) {
    try {
      if (e.response.statusCode == 400) {
        loginModel = LoginModel.fromJson(e.response.data, 'erro');
      }
    } catch (e) {
      loginModel = null;
    }
  }
  return loginModel;
}
