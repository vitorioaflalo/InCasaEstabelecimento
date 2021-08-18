import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'model_grafico.dart';


class Chart extends StatelessWidget {
  final List<Entregas> data;
  Chart({this.data});

  @override
  Widget build(BuildContext context) {

    List<charts.Series<Entregas, String>> series = [

      charts.Series(
          id: 'Entregas',
          data: data,
          domainFn: (Entregas series, _) => series.entregas,
          measureFn: (Entregas series, _) => series.numero_entregas,
          colorFn: (Entregas series, _) => series.barColor)
    ];
    return charts.BarChart(series, animate: true);
  }
}
