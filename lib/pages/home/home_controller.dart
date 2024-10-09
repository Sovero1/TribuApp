
import 'package:get/get.dart';
import 'package:tribu_app/models/post.dart';
import 'package:tribu_app/models/seccion_docente_curso.dart';
import 'package:tribu_app/services/post_service.dart';
import 'package:tribu_app/services/seccion_service.dart';

import '../../models/usuario.dart';

class HomeController extends GetxController {
  SeccionService seccionService = SeccionService();
  var secciones = <SeccionDocenteCurso>[].obs;
  var usuario = Usuario(idUsuario: 0, correo: '').obs;

  PostService postService = PostService();
  var posts = <Post>[].obs;

  void listarSecciones() async {
    secciones.value = await seccionService.fetchAll();
    print(secciones.value);
  }

  void listarPosts() async {
    posts.value = await postService.fetchAll();
    print(posts.value);
  }

  void updateUsuario(Usuario u) {
    Future.delayed(Duration(seconds: 5), () {
      print('¡5 segundos han pasado!');
      // Aquí puedes colocar el código que deseas ejecutar después de 5 segundos.
      usuario.update((val) {
        val?.idUsuario = u.idUsuario;
        val?.correo = u.correo;
      });
    });
  }
}
