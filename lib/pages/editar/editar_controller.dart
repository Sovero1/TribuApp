import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditarController extends GetxController {
  TextEditingController txtCodigo = TextEditingController();
  TextEditingController txtNombre = TextEditingController();
  TextEditingController txtCorreo = TextEditingController();
  TextEditingController txtCelular = TextEditingController();

  // Listas de opciones para los dropdowns
  List<String> ciclos = [
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

  List<String> carreras = [
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

  // Variables seleccionadas
  String selectedCiclo = 'seleccionar';
  String selectedCarrera = 'seleccionar';

  // Método para crear la cuenta
  void editAccount(BuildContext context) {
    print('Editando en la cuenta los siguientes datos:');
    print('Código: ${txtCodigo.text}');
    print('Nombre: ${txtNombre.text}');
    print('Correo: ${txtCorreo.text}');
    print('Celular: ${txtCelular.text}');
    print('Ciclo: $selectedCiclo');
    print('Carrera: $selectedCarrera');
    // Lógica adicional para guardar el usuario
  }
}