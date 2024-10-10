import 'package:get/get.dart';

class CustomMenuController extends GetxController {
  void goToPerfil() {
    Get.toNamed('/perfil');
  }
  void goToCursos() {
    Get.toNamed('/cursos');
  }
  void goToConfiguracion() {
    Get.toNamed('/configuracion');
  }
}