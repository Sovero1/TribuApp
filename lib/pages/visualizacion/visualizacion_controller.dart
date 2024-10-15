import 'package:get/get.dart';

class VisualizacionController extends GetxController {
// Variable que controla si el modo oscuro está activado o no.

  var isDarkModeEnabled = false.obs;

// Metodo para cambiar el estado del modo oscuro.

  void toggleDarkMode(bool value) {
    isDarkModeEnabled.value = value;
  }
}
