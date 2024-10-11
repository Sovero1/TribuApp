import 'package:get/get.dart';

class BuscarProfesoresController extends GetxController {
  var profesores = <String>[].obs;

  // Lista completa de profesores
  final List<String> todosLosProfesores = [
    'Pablo Rojas',
    'Carla López',
    'Luis Martínez',
    'Ana García',
    'Jorge Fernández'
  ];

  @override
  void onInit() {
    super.onInit();
    // Al iniciar, mostramos todos los profesores
    profesores.value = todosLosProfesores;
  }

  void buscar(String query) {
    if (query.isEmpty) {
      profesores.value = todosLosProfesores;
    } else {
      profesores.value = todosLosProfesores
          .where((profesor) => profesor.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
