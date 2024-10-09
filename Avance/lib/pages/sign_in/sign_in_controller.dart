import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../models/usuario.dart';
import '../../services/usuario_service.dart';

class SignInController extends GetxController {
  // Controladores para los campos de texto de usuario y contraseña
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtContrasenia = TextEditingController();

  // Variable reactiva para mostrar mensajes de éxito o error
  RxString mensaje = ''.obs;

  // Método que maneja el intento de inicio de sesión
  void goHome(BuildContext context) async {
    print('Estoy en el controlador');

    // Servicio que se encarga de la autenticación
    UsuarioService service = UsuarioService();

    // Llama al servicio de login para verificar las credenciales
    Usuario? usuario =
        await service.login(txtUsuario.text, txtContrasenia.text);

    // Validación de campos vacíos
    if (txtUsuario.text.isEmpty || txtContrasenia.text.isEmpty) {
      mensaje.value = 'Error: Debe llenar usuario y contraseña';
      // Ocultar mensaje después de 3 segundos
      Future.delayed(Duration(seconds: 3), () {
        mensaje.value = '';
      });
    }
    // Si el servicio devuelve un usuario válido
    else if (usuario != null) {
      print(usuario);
      mensaje.value = 'Success: Usuario y contraseña válidos';
      // Espera 3 segundos y redirige a la página de inicio
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/home', arguments: usuario.toJson());
      });
    }
    // Si las credenciales son incorrectas
    else {
      mensaje.value = 'Error: Usuario y contraseña no válidos';
      // Ocultar mensaje después de 3 segundos
      Future.delayed(Duration(seconds: 3), () {
        mensaje.value = '';
      });
    }
  }
}
