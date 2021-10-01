import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregas/acompanharEntregas_module.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregasDetalhes/acompanharEntregasDetalhes_module.dart';
import 'package:incasaestabelecimento/app/modules/historico/historico_module.dart';
import 'package:incasaestabelecimento/app/modules/historicoDetalhes/historicoDetalhes_module.dart';
import 'package:incasaestabelecimento/app/modules/home/home_module.dart';
import 'package:incasaestabelecimento/app/modules/home/home_store.dart';
import 'package:incasaestabelecimento/app/modules/login/login_module.dart';
import 'package:incasaestabelecimento/app/modules/perfil_estabelecimento/perfil_module.dart';
import 'package:incasaestabelecimento/app/modules/perfil_estabelecimento/perfil_page.dart';
import 'package:incasaestabelecimento/app/modules/relatorio/relatorio_module.dart';
import 'package:incasaestabelecimento/app/modules/solicitarEntrega/solicitarEntrega_module.dart';
import 'package:incasaestabelecimento/app/modules/start/start_page.dart';
import 'package:incasaestabelecimento/app/modules/start/start_store.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StartStore()),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StartPage(), children: [
      ModuleRoute('/historico', module: HistoricoModule()),
      ModuleRoute('/home', module: HomeModule()),
      ModuleRoute('/historicoDetalhes', module: HistoricoDetalhesModule()),
      ModuleRoute('/solicitarEntrega', module: SolicitarEntregaModule()),
      ModuleRoute('/acompanharEntregas', module: AcompanharEntregasModule()),
      ModuleRoute('/acompanharEntregasDetalhes',
          module: AcompanharEntregasDetalhesModule()),
      ModuleRoute('/perfil', module: PerfilModule()),
      ModuleRoute('/relatorio', module: RelatorioModule()),
    ]),
  ];
}
