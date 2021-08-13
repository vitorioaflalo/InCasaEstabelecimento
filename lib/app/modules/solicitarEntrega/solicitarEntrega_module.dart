import 'package:incasaestabelecimento/app/modules/solicitarEntrega/solicitarEntrega_Page.dart';
import 'package:incasaestabelecimento/app/modules/solicitarEntrega/solicitarEntrega_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SolicitarEntregaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SolicitarEntregaStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SolicitarEntregaPage()),
  ];
}
