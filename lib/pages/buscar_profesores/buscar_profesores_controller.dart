import 'package:get/get.dart';

class BuscarProfesoresController extends GetxController {
  var profesores = <String>[].obs;

  void buscar(String query) {
    // Lógica de búsqueda para filtrar profesores
    // Puedes agregar tu lógica para buscar en una lista de profesores
    // Aquí se muestra una lista de ejemplo para la demostración:
    if (query.isEmpty) {
      profesores.value = [];
    } else {
      profesores.value = [
        'Pablo Rojas',
        'Carla López',
        'Luis Martínez',
        'Ana García',
        'Jorge Fernández'
      ].where((profesor) => profesor.toLowerCase().contains(query.toLowerCase())).toList();
    }
  }
}
