import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetController extends GetxController {
  TextEditingController txtCorreo = TextEditingController();

  void resetPassword(BuildContext context) {
    // Lógica para restablecer la contraseña
    print('Buscando cuenta con correo: ${txtCorreo.text}');
    // Aquí puedes agregar la lógica para enviar los datos al backend
  }
}
