import 'package:flutter/material.dart';

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