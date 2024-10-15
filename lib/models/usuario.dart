class Usuario {
  int idUsuario;
  String codigo;
  String contrasena;

  // Constructor con los atributos requeridos
  Usuario({
    required this.idUsuario,
    required this.codigo,
    required this.contrasena,
  });

  // Método toString para representar la clase como un String
  @override
  String toString() {
    return 'Usuario{idUsuario: $idUsuario, codigo: $codigo, contrasena: $contrasena}';
  }

  // Método para convertir la instancia a un Map (JSON)
  Map<String, dynamic> toJson() {
    return {
      'idUsuario': idUsuario,
      'codigo': codigo,
      'contrasena': contrasena,
    };
  }

  // Método para crear una instancia de Usuario a partir de un Map
  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      idUsuario: map['idUsuario'],
      codigo: map['codigo'],
      contrasena: map['contrasena'],
    );
  }
}
