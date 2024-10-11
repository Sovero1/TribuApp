import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../models/usuario.dart';
import '../../services/usuario_service.dart';

class SignInController extends GetxController {
  UsuarioService usuarioService = UsuarioService();

  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtContrasenia = TextEditingController();

  //mensajes de error o exitos
  RxString mensaje = ' '.obs;
// Método que maneja el intento de inicio de sesión
  void goHome(BuildContext context) async {
    print('Estoy en el controlador');
  }

  void login(BuildContext context) async {
    print('Se supone entro a login');
    String codigo = txtUsuario.text;
    String contrasena = txtContrasenia.text;
    //validar
    if (codigo.isEmpty || contrasena.isEmpty) {
      mensaje.value = 'Debe Ingresar codigo de usuario Ulima y contraseña';
      Future.delayed(Duration(seconds: 4), () {
        mensaje.value = ' ';
      });
      return;
    }

    //traermos la lista y verificamos credenciales
    Usuario? usuario = await usuarioService.login(codigo, contrasena);

    if (usuario != null) {
      mensaje.value = 'Success : Inicio exitoso. Bienvenido, ${usuario.nombre}';
      // Redirige a la página de inicio
      Navigator.pushNamed(context, '/home', arguments: usuario.toJson());
    } else {
      mensaje.value = 'Error : Usuario o contraseña incorrectos';
      Future.delayed(Duration(seconds: 4), () {
        mensaje.value = '';
      });
    }
  }
}
