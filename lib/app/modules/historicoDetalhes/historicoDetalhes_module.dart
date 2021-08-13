import 'package:flutter_modular/flutter_modular.dart';

import 'historicoDetalhes_page.dart';
import 'historicoDetalhes_store.dart';

class HistoricoDetalhesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HistoricoDetalhesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HistoricoDetalhesPage()),
  ];
}
