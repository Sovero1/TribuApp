import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class SignUpController extends GetxController {
  TextEditingController txtCodigo = TextEditingController();
  TextEditingController txtNombre = TextEditingController();
  TextEditingController txtCorreo = TextEditingController();
  TextEditingController txtCelular = TextEditingController();
  TextEditingController txtContrasenia = TextEditingController();

  // Listas de opciones para los dropdowns
  List<String> ciclos = [
    'seleccionar',
    'Ciclo 1',
    'Ciclo 2',
    'Ciclo 3',
    'Ciclo 4',
    'Ciclo 5',
    'Ciclo 6',
    'Ciclo 7',
    'Ciclo 8',
    'Ciclo 9',
    'Ciclo 10'
  ];

  List<String> carreras = [
    'seleccionar',
    'Arquitectura',
    'Administración',
    'Contabilidad y Finanzas',
    'Economía',
    'Marketing',
    'Negocios Internacionales',
    'Comunicación',
    'Derecho',
    'Ingeniería Civil',
    'Ingeniería Industrial',
    'Ingeniería de Sistemas',
    'Psicología'
  ];

  // Variables seleccionadas
  String selectedCiclo = 'seleccionar';
  String selectedCarrera = 'seleccionar';

  // Método para crear la cuenta
  Future<void> createAccount(BuildContext context) async {
    print('Creando cuenta con los siguientes datos:');
    print('Código: ${txtCodigo.text}');
    print('Nombre: ${txtNombre.text}');
    print('Correo: ${txtCorreo.text}');
    print('Celular: ${txtCelular.text}');
    print('Ciclo: $selectedCiclo');
    print('Carrera: $selectedCarrera');
    print('Contraseña: ${txtContrasenia.text}');

    // Crear objeto de usuario y alumno
    Map<String, dynamic> newUser = {
      'idUsuario': DateTime.now().millisecondsSinceEpoch, // Genera un ID único
      'codigo': txtCodigo.text,
      'contrasena': txtContrasenia.text
    };

    Map<String, dynamic> newAlumno = {
      'idAlumno': DateTime.now().millisecondsSinceEpoch,
      'codigo': txtCodigo.text,
      'correo': txtCorreo.text,
      'nombre': txtNombre.text,
      'celular': txtCelular.text,
      'carrera': selectedCarrera,
      'foto': 'default.jpg', // manejar la foto después
      'ciclo': selectedCiclo,
      'contrasena': txtContrasenia.text,
    };

    // Guardar los datos en los archivos JSON
    await _saveUserToJson(newUser, 'usuarios.json');
    await _saveUserToJson(newAlumno, 'alumnos.json');

    // Muestra mensaje de éxito
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Cuenta creada exitosamente'),
    ));
  }

  // Método para guardar los datos en un archivo JSON
  Future<void> _saveUserToJson(
      Map<String, dynamic> newData, String fileName) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';

      File file = File(filePath);

      if (!file.existsSync()) {
        // Si el archivo no existe, crearlo
        file = await File(filePath).create();
        await file
            .writeAsString(jsonEncode([newData])); // Guardar como nuevo JSON
      } else {
        // Leer los datos existentes
        String fileContent = await file.readAsString();
        List<dynamic> jsonData = jsonDecode(fileContent);

        // Agregar los nuevos datos
        jsonData.add(newData);

        // Guardar los datos actualizados
        await file.writeAsString(jsonEncode(jsonData));
      }
    } catch (e) {
      print('Error al guardar datos: $e');
    }
  }
}
