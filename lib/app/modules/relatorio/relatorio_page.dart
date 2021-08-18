import 'package:flutter/material.dart';
import 'widgets/dropdown.dart';
import 'widgets/grafico/grafico.dart';
import 'widgets/valores_entregas.dart';

class RelatorioPage extends StatefulWidget {
  const RelatorioPage({Key key}) : super(key: key);

  @override
  _RelatorioPageState createState() => _RelatorioPageState();
}

class _RelatorioPageState extends State<RelatorioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            shadowColor: Colors.red[500],
            backgroundColor: Colors.white,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.red[500],
                )),
            title: Text(
              'Relatório',
              style: TextStyle(
                  color: Colors.red[900], fontWeight: FontWeight.bold),
            )),
        body: Padding(
          padding: const EdgeInsets.only(top: 24.0,  left: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Razão Social',
                    style: TextStyle(color: Colors.red.shade900, fontSize: 25),
                  ),
                  Text(
                    'Mês:',
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.2),
                    ),
                    child: DropDown_meses(),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Grafico(),
              ),
              entregas(text: 'Valor total de entregas:             ',),
              entregas(text: 'Tarifa mensal a ser paga:          ',),
              entregas(text: 'Tarifa por entrega a ser paga:  '),
              entregas(text: 'Valor a ser pago ao inCasa:      ',),
              Padding(
                padding: const EdgeInsets.only(top: 24,  left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Valor total de entregas + tarifa do aplicativo', style: TextStyle(color: Colors.red.shade900),),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}



