/*
prompt chatgpt: quiero una clase en dart llamada Usuario, que tenga como atributos un idUsuario entero y un correo como String. Adiconalmente, quiero que la clase tenga el metodo toString, toJson y fromMap
 */

class Usuario {
  int idUsuario;
  String correo;

  Usuario({required this.idUsuario, required this.correo});

  // Método toString para representar la clase como un String
  @override
  String toString() {
    return 'Usuario{idUsuario: $idUsuario, correo: $correo}';
  }

  // Método para convertir la instancia a un Map (JSON)
  Map<String, dynamic> toJson() {
    return {
      'idUsuario': idUsuario,
      'correo': correo,
    };
  }

  // Método para crear una instancia de Usuario a partir de un Map
  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      idUsuario: map['idUsuario'],
      correo: map['correo'],
    );
  }
}
