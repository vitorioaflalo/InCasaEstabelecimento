import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(top: 24.0, right: 24.0, left: 8.0),
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
                      color: Colors.grey, style: BorderStyle.solid, width: 1.2),
                ),
                child: DropDown_meses(),
              )],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Text('Entregas Solicitadas  x  Entregas Realizadas', style: TextStyle(color: Colors.red.shade900, fontSize: 18),
                ),
              )
            ],
          ),
        ));
  }
}

class DropDown_meses extends StatefulWidget {
  const DropDown_meses({Key key}) : super(key: key);

  @override
  _DropDown_mesesState createState() => _DropDown_mesesState();
}

class _DropDown_mesesState extends State<DropDown_meses> {
  String dropdownValue = 'Selecione';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_drop_down, color: Colors.red.shade900, size: 30),
        iconSize: 18,
        elevation: 14,
        style: TextStyle(fontSize: 15, color: Colors.red.shade900),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          'Selecione',
          'Janeiro',
          'Fevereiro',
          'Março',
          'Abril',
          'Maio',
          'Junho',
          'Julho',
          'Agosto',
          'Setembro',
          'Outubro',
          'Novembro',
          'Dezembro'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
