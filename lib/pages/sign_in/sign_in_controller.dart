import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../services/alumno_service.dart';
import '../../models/usuario.dart';
import '../../services/usuario_service.dart';
import '../../models/alumno.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SignInController extends GetxController {
  UsuarioService usuarioService = UsuarioService();
  AlumnoService alumnoService = AlumnoService();
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtContrasenia = TextEditingController();

  // Mensajes de error o éxitos
  RxString mensaje = ' '.obs;

  void login(BuildContext context) async {
    String codigo = txtUsuario.text;
    String contrasena = txtContrasenia.text;

    // Validar campos vacíos
    if (codigo.isEmpty || contrasena.isEmpty) {
      mensaje.value = 'Debe ingresar código de usuario y contraseña';
      Future.delayed(Duration(seconds: 4), () {
        mensaje.value = ' ';
      });
      return;
    }

    // Verificamos las credenciales del usuario
    Usuario? usuario = await usuarioService.login(codigo, contrasena);

    if (usuario != null) {
      // Una vez que tenemos el usuario, obtenemos el alumno por el idUsuario
      Alumno? alumno =
          await alumnoService.obtenerAlumnoPorId(usuario.idUsuario);

      if (alumno != null) {
        mensaje.value =
            'Success : Inicio exitoso. Bienvenido, ${alumno.nombre}';
        // Redirigir a la página de inicio con los detalles del alumno
        Navigator.pushNamed(context, '/home', arguments: alumno.toJson());
        // Guardar el idUsuario en SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('idUsuario', usuario.idUsuario); 
      
      } 
      else {
        mensaje.value =
            'Error: No se encontró un alumno asociado a este usuario';
        Future.delayed(Duration(seconds: 4), () {
          mensaje.value = '';
        });
      }
    } else {
      mensaje.value = 'Error : Usuario o contraseña incorrectos';
      Future.delayed(Duration(seconds: 4), () {
        mensaje.value = '';
      });
    }
  }
}
