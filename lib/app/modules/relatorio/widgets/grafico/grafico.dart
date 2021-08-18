import 'package:flutter/material.dart';
import 'package:incasaestabelecimento/app/modules/relatorio/widgets/grafico/config_grafico.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'model_grafico.dart';

class Grafico extends StatelessWidget {
  final List<Entregas> data = [
    Entregas(
        entregas: 'Entregas Solicitadas: 50 ',
        numero_entregas: 50,
        barColor: charts.ColorUtil.fromDartColor(Colors.red.shade900)),
    Entregas(
        entregas: 'Entregas Realizadas: 48',
        numero_entregas: 48,
        barColor: charts.ColorUtil.fromDartColor(Colors.red.shade900)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Entregas Solicitadas  x  Entregas realizadas',
          style: TextStyle(
              color: Colors.red.shade900,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Chart(
            data: data,
          ),
        ),
      ],
    );
  }
}