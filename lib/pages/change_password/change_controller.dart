import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeController extends GetxController {
  // Controladores para los campos de contraseña
  TextEditingController txtNewPassword = TextEditingController();
  TextEditingController txtRepeatPassword = TextEditingController();

  // Método para manejar el cambio de contraseña
  void changePassword(BuildContext context) {
    String newPassword = txtNewPassword.text;
    String repeatPassword = txtRepeatPassword.text;

    // Validación básica
    if (newPassword.isEmpty || repeatPassword.isEmpty) {
      Get.snackbar(
        'Error',
        'Todos los campos son obligatorios.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    if (newPassword != repeatPassword) {
      Get.snackbar(
        'Error',
        'Las contraseñas no coinciden.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    // Aquí puedes agregar la lógica para realizar el cambio de contraseña en tu backend o base de datos

    // Mensaje de éxito
    Get.snackbar(
      'Éxito',
      'Contraseña cambiada exitosamente.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );

    // Limpiar los campos después de un cambio exitoso
    txtNewPassword.clear();
    txtRepeatPassword.clear();
  }

  @override
  void onClose() {
    // Asegúrate de limpiar los controladores cuando el controlador se destruye
    txtNewPassword.dispose();
    txtRepeatPassword.dispose();
    super.onClose();
  }
}
