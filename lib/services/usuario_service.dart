import 'package:flutter/services.dart' show rootBundle;

import '../models/usuario.dart';

class UsuarioService {
  Future<Usuario?> login(String usuario, String contrasenia) async {
    if (usuario == 'admin' && contrasenia == '123') {
      return Usuario(idUsuario: 10, correo: '20210274@aloe.ulima.edu.pe');
    } else {
      return null;
    }
  }
}
