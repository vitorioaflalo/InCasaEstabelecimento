import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:incasaestabelecimento/app/modules/home/widgets/containerButtonDef_widget.dart';
import 'package:incasaestabelecimento/app/modules/login/helpers/api_service.dart';
import 'package:incasaestabelecimento/app/modules/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(30, 100, 30, 30),
      child: LayoutBuilder(builder: (_, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildDefContainer(
              constraints,
              text: 'Solicitar Entrega',
              rota: '/solicitarEntrega/',
            ),
            Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.05)),
            buildDefContainer(constraints,
                text: 'Acompanhar Entregas', rota: '/acompanharEntregas/'),
            Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.05)),
            buildDefContainer(constraints,
                text: 'Histórico', rota: '/historico/'),
            Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.05)),
            buildDefContainer(constraints,
                text: 'Relatório', rota: '/relatorio/'),
            Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.15)),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove('token');
                    prefs.remove('id');
                    Modular.to.navigate('/login');
                  },
                  icon: Icon(
                    Icons.exit_to_app_outlined,
                    size: 35,
                  ),
                  alignment: Alignment.bottomRight,
                ),
                Text(
                  'Sair',
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        );
      }),
    ));
  }
}
