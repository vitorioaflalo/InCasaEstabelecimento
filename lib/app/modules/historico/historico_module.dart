import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/historico/historico_page.dart';

import 'historico_store.dart';

class HistoricoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HistoricoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HistoricoPage()),
  ];
}
