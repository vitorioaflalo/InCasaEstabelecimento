import 'package:incasaestabelecimento/app/modules/acompanharEntregas/acompanharEntregas_Page.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/acompanharEntregas_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AcompanharEntregasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AcompanharEntregasStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AcompanharEntregasPage()),
  ];
}
