import 'package:get/get.dart';

class BuscarController extends GetxController {
  var resultados = <String>[].obs;

  // Lista de materiales y profesores (compartidas)
  final List<String> todosLosProfesores = [
    'Pablo Rojas',
    'Carla López',
    'Luis Martínez',
    'Ana García',
    'Jorge Fernández'
  ];

  final List<String> todosLosMateriales = [
    'EV1-2018-2',
    'Ejemplo-Herencia',
    'ClaseIntroduccionPoo.pdf',
    'EV1-2019-1',
    'Ejemplo-Algoritmos-Básicos',
    'ClaseIntroduccionAlgoritmos.pdf'
  ];

  // Lista completa de datos (combina carreras, cursos, profesores y materiales)
  final List<String> todosLosDatos = [
    // Carreras
    'Ingeniería de Sistemas',
    'Ingeniería Civil',

    // Cursos
    'Programación Orientada a Objetos',
    'Algoritmos',
    'Análisis Matemático',
    'Bases de Datos',
  ];

  @override
  void onInit() {
    super.onInit();
    // Al iniciar, combinamos todos los datos
    resultados.value = [...todosLosDatos, ...todosLosProfesores, ...todosLosMateriales];
  }

  void buscar(String query) {
    if (query.isEmpty) {
      resultados.value = [...todosLosDatos, ...todosLosProfesores, ...todosLosMateriales];
    } else {
      resultados.value = [
        ...todosLosDatos,
        ...todosLosProfesores,
        ...todosLosMateriales
      ].where((element) => element.toLowerCase().contains(query.toLowerCase())).toList();
    }
  }
}
