import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/historico/historico_page.dart';
import 'package:incasaestabelecimento/app/modules/perfil_estabelecimento/perfil_page.dart';
import 'package:incasaestabelecimento/app/modules/relatorio/relatorio_page.dart';

import 'relatorio_store.dart';

class RelatorioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RelatorioStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RelatorioPage()),
  ];
}
