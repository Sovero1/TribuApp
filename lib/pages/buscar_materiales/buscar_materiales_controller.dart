import 'package:get/get.dart';

class BuscarMaterialesController extends GetxController {
  var materiales = <String>[].obs;

  // Lista completa de materiales (puedes cambiar esto por tus datos reales)
  final List<String> todosLosMateriales = [
    'EV1-2018-2',
    'Ejemplo-Herencia',
    'ClaseIntroduccionPoo.pdf',
    'EV1-2019-1',
    'Ejemplo-Algoritmos-Básicos',
    'ClaseIntroduccionAlgoritmos.pdf'
  ];

  @override
  void onInit() {
    super.onInit();
    // Al iniciar, mostramos todos los materiales
    materiales.value = todosLosMateriales;
  }

  void buscar(String query) {
    if (query.isEmpty) {
      materiales.value = todosLosMateriales;
    } else {
      materiales.value = todosLosMateriales
          .where((material) => material.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
