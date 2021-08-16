import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/historico/historico_page.dart';
import 'package:incasaestabelecimento/app/modules/perfil_estabelecimento/perfil_page.dart';

import 'perfil_store.dart';

class PerfilModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PerfilStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PerfilPage()),
  ];
}
