class Alumno {
  int idAlumno;
  String codigo;
  String correo;
  String nombre;
  String celular;
  String carrera;
  String foto;
  int ciclo;
  String contrasena;

  // Constructor con los atributos requeridos
  Alumno({
    required this.idAlumno,
    required this.codigo,
    required this.correo,
    required this.nombre,
    required this.celular,
    required this.carrera,
    required this.foto,
    required this.ciclo,
    required this.contrasena,
  });

  // Método toString para representar la clase como un String
  @override
  String toString() {
    return 'Alumno{idAlumno: $idAlumno, codigo: $codigo, correo: $correo, nombre: $nombre, celular: $celular, carrera: $carrera, foto: $foto, ciclo: $ciclo, contrasena: $contrasena}';
  }

  // Método para convertir la instancia a un Map (JSON)
  Map<String, dynamic> toJson() {
    return {
      'idAlumno': idAlumno,
      'codigo': codigo,
      'correo': correo,
      'nombre': nombre,
      'celular': celular,
      'carrera': carrera,
      'foto': foto,
      'ciclo': ciclo,
      'contrasena': contrasena,
    };
  }

  // Método para crear una instancia de Alumno a partir de un Map
  factory Alumno.fromMap(Map<String, dynamic> map) {
    return Alumno(
      idAlumno: map['idAlumno'],
      codigo: map['codigo'],
      correo: map['correo'],
      nombre: map['nombre'],
      celular: map['celular'],
      carrera: map['carrera'],
      foto: map['foto'],
      ciclo: map['ciclo'],
      contrasena: map['contrasena'],
    );
  }
}
