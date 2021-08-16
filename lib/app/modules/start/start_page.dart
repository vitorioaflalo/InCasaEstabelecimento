import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/modules/start/start_store.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = 'StartPage'}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  final StartStore store = Modular.get();
  final pageViewController = PageController();
  int _currentPage = 0;
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Modular.to.navigate('/start/home/');
    _currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.home, color: Colors.red[900]),
          onPressed: () {
            print('teste');
            setState(() {
              _currentPage = 0;
              Modular.to.navigate('/start/home/');
            });
          },
        ),
        title: Center(
          child: Image.asset(
            'images/logo.png',
            height: 50,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.red[900]),
            onPressed: () {
              setState(() {
                _currentPage = 1;
                Modular.to.pushNamed('/start/perfil/');
              });
            },
          ),
        ],
      ),
      body: PageView(
        controller: pageViewController,
        children: [
          RouterOutlet(),
        ],
      ),
    );
  }
}
