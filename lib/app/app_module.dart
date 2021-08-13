import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/login/login_module.dart';
import 'package:incasaestabelecimento/app/modules/start/start_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/start', module: StartModule()),
  ];
}
