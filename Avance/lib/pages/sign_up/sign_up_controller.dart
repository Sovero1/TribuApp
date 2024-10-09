import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController txtCodigo = TextEditingController();
  TextEditingController txtNombre = TextEditingController();
  TextEditingController txtCorreo = TextEditingController();
  TextEditingController txtContrasenia = TextEditingController();

  void createAccount(BuildContext context) {
    // Lógica para crear la cuenta
    print('Creando cuenta con los siguientes datos:');
    print('Código: ${txtCodigo.text}');
    print('Nombre: ${txtNombre.text}');
    print('Correo: ${txtCorreo.text}');
    print('Contraseña: ${txtContrasenia.text}');
    // Aquí podrías agregar la lógica para enviar los datos al backend
  }
}
