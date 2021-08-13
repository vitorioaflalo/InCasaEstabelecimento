import 'package:incasaestabelecimento/app/modules/acompanharEntregasDetalhes/acompanharEntregasDetalhes_Page.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregasDetalhes/acompanharEntregasDetalhes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AcompanharEntregasDetalhesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AcompanharEntregasDetalhesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AcompanharEntregasDetalhesPage()),
  ];
}
