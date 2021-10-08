import 'package:flutter/material.dart';

class DropDown_meses extends StatefulWidget {
  final Function(int mes) onChanged;
  const DropDown_meses({Key key, this.onChanged}) : super(key: key);

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
          int mes;
          setState(() {
            dropdownValue = newValue;
          });
          switch (newValue) {
            case 'Janeiro':
              mes = 1;
              break;
            case 'Fevereiro':
              mes = 2;
              break;
             case 'Março':
              mes = 3;
              break;
             case 'Abril':
              mes = 4;
              break;
             case 'Maio':
              mes = 5;
              break;
             case 'Junho':
              mes = 6;
              break;
             case 'Julho':
              mes = 7;
              break;
             case 'Agosto':
              mes = 8;
              break;
             case 'Setembro':
              mes = 9;
              break;
             case 'Outubro':
              mes = 10;
              break;
             case 'Novembro':
              mes = 11;
              break;
             case 'Dezembro':
              mes = 12;
              break;            
          }
          widget.onChanged(mes);
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
