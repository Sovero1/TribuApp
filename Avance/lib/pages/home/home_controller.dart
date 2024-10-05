import 'package:tribu_app/models/seccion_docente_curso.dart';
import 'package:tribu_app/services/seccion_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  SeccionService seccionService = SeccionService();
  var secciones = <SeccionDocenteCurso>[].obs;

  void listarSecciones() async {
    secciones.value = await seccionService.fetchAll();
    print(secciones.value);
  }
}
