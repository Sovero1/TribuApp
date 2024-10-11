import 'package:flutter/material.dart';

class CarreraDropdown extends StatelessWidget {
  final String selectedCarrera;
  final Function(String?) onChanged;

  CarreraDropdown({required this.selectedCarrera, required this.onChanged});

  final List<String> carreras = [
    'seleccionar',
    'Arquitectura',
    'Administración',
    'Contabilidad y Finanzas',
    'Economía',
    'Marketing',
    'Negocios Internacionales',
    'Comunicación',
    'Derecho',
    'Ingeniería Civil',
    'Ingeniería Industrial',
    'Ingeniería de Sistemas',
    'Psicología'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedCarrera,
      items: carreras.map((String carrera) {
        return DropdownMenuItem<String>(
          value: carrera,
          child: Text(carrera),
        );
      }).toList(),
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: 'CARRERA',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}
