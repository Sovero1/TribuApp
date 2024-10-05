import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../models/usuario.dart';
import '../../services/usuario_service.dart';

class SignInController extends GetxController {
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtContrasenia = TextEditingController();
  RxString mensaje = ''.obs;

  void goHome(BuildContext context) async {
    print('estoy en el controlador');
    UsuarioService service = UsuarioService();
    Usuario? usuario =
        await service.login(txtUsuario.text, txtContrasenia.text);
    if (txtUsuario.text == '' || txtContrasenia.text == '') {
      this.mensaje.value = 'Error: Debe de llenar usuario y contraseña';
      Future.delayed(Duration(seconds: 3), () {
        this.mensaje.value = '';
      });
    } else if (usuario != null) {
      print(usuario);
      this.mensaje.value = 'Success: Usuario y contraseña válidos';
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/home', arguments: usuario.toJson());
      });
    } else {
      this.mensaje.value = 'Error: Usuario y contraseña no válidos';
      Future.delayed(Duration(seconds: 3), () {
        this.mensaje.value = '';
      });
    }
  }
}
