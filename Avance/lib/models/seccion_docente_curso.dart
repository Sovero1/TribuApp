import 'dart:convert';

class SeccionDocenteCurso {
  final int id;
  final int codigo;
  final String diploma;
  final DateTime fechaInicio;
  final DateTime fechaFin;
  final int docenteId;
  final String docenteNombre;
  final int cursoId;
  final String cursoNombre;
  final String cursoDescripcion;
  final String cursoImagen;
  final int seccionId;
  final int seccionCodigo;

  // Constructor del Course
  SeccionDocenteCurso({
    required this.id,
    required this.codigo,
    required this.diploma,
    required this.fechaInicio,
    required this.fechaFin,
    required this.docenteId,
    required this.docenteNombre,
    required this.cursoId,
    required this.cursoNombre,
    required this.cursoDescripcion,
    required this.cursoImagen,
    required this.seccionId,
    required this.seccionCodigo,
  });

  // Método toString
  @override
  String toString() {
    return 'SeccionDocenteCurso(id: $id, codigo: $codigo, diploma: $diploma, '
        'fechaInicio: $fechaInicio, fechaFin: $fechaFin, '
        'docenteId: $docenteId, docenteNombre: $docenteNombre, '
        'cursoId: $cursoId, cursoNombre: $cursoNombre, '
        'cursoDescripcion: $cursoDescripcion, cursoImagen: $cursoImagen, '
        'seccionId: $seccionId, seccionCodigo: $seccionCodigo)';
  }

  // Método toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'codigo': codigo,
      'diploma': diploma,
      'fecha_inicio': fechaInicio.toIso8601String(),
      'fecha_fin': fechaFin.toIso8601String(),
      'docente_id': docenteId,
      'docente_nombre': docenteNombre,
      'curso_id': cursoId,
      'curso_nombre': cursoNombre,
      'curso_descripcion': cursoDescripcion,
      'curso_imagen': cursoImagen,
      'seccion_id': seccionId,
      'seccion_codigo': seccionCodigo,
    };
  }

  // Método fromMap
  factory SeccionDocenteCurso.fromMap(Map<String, dynamic> map) {
    return SeccionDocenteCurso(
      id: map['id'],
      codigo: map['codigo'],
      diploma: map['diploma'],
      fechaInicio: DateTime.parse(map['fecha_inicio']),
      fechaFin: DateTime.parse(map['fecha_fin']),
      docenteId: map['docente_id'],
      docenteNombre: map['docente_nombre'],
      cursoId: map['curso_id'],
      cursoNombre: map['curso_nombre'],
      cursoDescripcion: map['curso_descripcion'],
      cursoImagen: map['curso_imagen'],
      seccionId: map['seccion_id'],
      seccionCodigo: map['seccion_codigo'],
    );
  }
}
