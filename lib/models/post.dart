class Post {
  final int idPost;
  final String titulo;
  final String fotoPost;
  final String descripcion;
  final int reacciones;
  final int comentarios;
  final String material;
  final int idEstudiante;
  final String fotoEstudiante;
  final String nombreEstudiante;
  final String carreraEstudiante;

  Post({
    required this.idPost,
    required this.titulo,
    required this.fotoPost,
    required this.descripcion,
    required this.reacciones,
    required this.comentarios,
    required this.material,
    required this.idEstudiante,
    required this.fotoEstudiante,
    required this.nombreEstudiante,
    required this.carreraEstudiante,
  });

  // Método toString
  @override
  String toString() {
    return 'Post{idPost: $idPost, titulo: $titulo, fotoPost: $fotoPost, descripcion: $descripcion, reacciones: $reacciones, comentarios: $comentarios, material: $material, idEstudiante: $idEstudiante, fotoEstudiante: $fotoEstudiante, nombreEstudiante: $nombreEstudiante, carreraEstudiante: $carreraEstudiante}';
  }

  // Método toJson
  Map<String, dynamic> toJson() {
    return {
      'idPost': idPost,
      'titulo': titulo,
      'fotoPost': fotoPost,
      'descripcion': descripcion,
      'reacciones': reacciones,
      'comentarios': comentarios,
      'material': material,
      'idEstudiante': idEstudiante,
      'fotoEstudiante': fotoEstudiante,
      'nombreEstudiante': nombreEstudiante,
      'carreraEstudiante': carreraEstudiante,
    };
  }

  // Método fromMap
  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      idPost: map['id_Post'],
      titulo: map['titulo'],
      fotoPost: map['foto_post'],
      descripcion: map['descripcion'],
      reacciones: map['reacciones'],
      comentarios: map['comentarios'],
      material: map['material'],
      idEstudiante: map['id_estudiante'],
      fotoEstudiante: map['foto_estudiante'],
      nombreEstudiante: map['nombre_estudiante'],
      carreraEstudiante: map['carrera_estudiante'],
    );
  }
}
