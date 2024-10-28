import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/alumno_service.dart';
import 'package:tribu_app/models/alumno.dart';

class PerfilController extends GetxController {
  AlumnoService perfilService = AlumnoService();
   var alumno = Rx<Alumno?>(null);  

  @override
  void onInit() {
    super.onInit();
    cargarPerfil();
  }
  void cargarPerfil() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? idUsuario = prefs.getInt('idUsuario');
    print("ID Usuario: $idUsuario"); 

    if (idUsuario != null) {
      Alumno? alumnoEncontrado = await perfilService.obtenerAlumnoPorId(idUsuario);
      if (alumnoEncontrado != null) {
        alumno.value = alumnoEncontrado;  
        print("Alumno encontrado: ${alumno.value?.nombre}"); 
      } else {
        print("Alumno no encontrado"); 
        alumno.value = null;
      }
    } else {
      print("No hay ID de usuario guardado"); 
      alumno.value = null;
    }
  }
}