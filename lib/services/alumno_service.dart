import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/alumno.dart';

class AlumnoService {
  // Método para leer y mapear los alumnos del archivo JSON
  Future<List<Alumno>> traeralumnos() async {
    // Lectura del archivo JSON
    final String response =
        await rootBundle.loadString('assets/json/alumnos.json');
    // Decodificar el JSON a una lista dinámica
    List<dynamic> data = json.decode(response);
    // Mapear la lista dinámica a una lista de objetos Alumno
    return data.map((alumnoJson) => Alumno.fromMap(alumnoJson)).toList();
  }

  // Método para obtener un Alumno por su ID
  Future<Alumno?> obtenerAlumnoPorId(int idAlumno) async {
    // Obtener la lista de alumnos desde el archivo JSON
    List<Alumno> alumnos = await traeralumnos();

    // Buscar el alumno por su idAlumno
    for (var alumno in alumnos) {
      if (alumno.idAlumno == idAlumno) {
        return alumno;
      }
    }

    // Si no se encuentra, devolver null
    return null;
  }
}
