import 'dart:convert';
import 'dart:io';
import 'package:tribu_app/models/seccion_docente_curso.dart';
import 'package:flutter/services.dart' show rootBundle;

class SeccionService {
  Future<List<SeccionDocenteCurso>> fetchAll() async {
    List<SeccionDocenteCurso> secciones = [];
    final String response =
        await rootBundle.loadString("assets/json/secciones.json");
    final List<dynamic> data = jsonDecode(response);
    secciones = data
        .map((map) => SeccionDocenteCurso.fromMap(map as Map<String, dynamic>))
        .toList();
    return secciones;
  }
}
