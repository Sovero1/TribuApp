import 'package:flutter/material.dart';

class CicloDropdown extends StatelessWidget {
  final String selectedCiclo;
  final Function(String?) onChanged;

  CicloDropdown({required this.selectedCiclo, required this.onChanged});

  final List<String> ciclos = [
    'seleccionar',
    'Ciclo 1',
    'Ciclo 2',
    'Ciclo 3',
    'Ciclo 4',
    'Ciclo 5',
    'Ciclo 6',
    'Ciclo 7',
    'Ciclo 8',
    'Ciclo 9',
    'Ciclo 10'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedCiclo,
      items: ciclos.map((String ciclo) {
        return DropdownMenuItem<String>(
          value: ciclo,
          child: Text(ciclo),
        );
      }).toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: 'CICLO',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}
