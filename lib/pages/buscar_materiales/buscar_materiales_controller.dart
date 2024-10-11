import 'package:get/get.dart';

class BuscarMaterialesController extends GetxController {
  // Aquí puedes agregar la lógica para la búsqueda de materiales
  var materiales = <String>[].obs;

  void buscar(String query) {
    // Implementa la lógica de búsqueda de materiales aquí
    // Actualiza la lista de `materiales` según el resultado de la búsqueda
    materiales.value = ["Material 1", "Material 2", "Material 3"]; // Ejemplo
  }
}
