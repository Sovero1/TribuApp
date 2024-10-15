import 'package:get/get.dart';
import 'package:tribu_app/services/post_service.dart';

class HomeController extends GetxController {
  /*var usuario = Usuario(idUsuario: 0, correo: '').obs;*/

  PostService postService = PostService();

  /*void updateUsuario(Usuario u) {
    Future.delayed(Duration(seconds: 5), () {
      usuario.update((val) {
        val?.idUsuario = u.idUsuario;
        val?.correo = u.correo;
      });
    });
  }*/
}
