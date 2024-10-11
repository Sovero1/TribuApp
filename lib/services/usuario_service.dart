import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

import '../models/usuario.dart';

class UsuarioService {
  Future<List<Usuario>> traerUsuarios() async {
    //lectura de json
    final String response =
        await rootBundle.loadString('assets/json/usuarios.json');
    //decodificar Json a Map
    List<dynamic> data = json.decode(response);
    //Mapear a lista de objetos
    return data.map((usuarioJson) => Usuario.fromMap(usuarioJson)).toList();
  }

  Future<Usuario?> login(String codigo, String constrasena) async {
    List<Usuario> usuarios = await traerUsuarios();

    for (var usuario in usuarios) {
      if (usuario.codigo == codigo && usuario.contrasena == constrasena) {
        return usuario;
      }
    }

    return null;
  }
}


    /*if (usuario == 'admin' && contrasenia == '123') {
      return Usuario(idUsuario: 10, correo: '20210274@aloe.ulima.edu.pe');
    } else {
      return null;
    }*/
  
