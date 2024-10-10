import 'package:get/get.dart';

class CustomMenuController extends GetxController {
  // Navega a la página de perfil
  void goToPerfil() {
    Get.toNamed('/perfil');
  }

  // Navega a la página de cursos
  void goToCursos() {
    Get.toNamed('/cursos');
  }

  // Navega a la página de configuración
  void goToConfiguracion() {
    Get.toNamed('/configuracion');
  }
}