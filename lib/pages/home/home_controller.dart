
import 'package:get/get.dart';
import 'package:tribu_app/models/post.dart';
import 'package:tribu_app/services/post_service.dart';
import '../../models/usuario.dart';

class HomeController extends GetxController {
  var usuario = Usuario(idUsuario: 0, correo: '').obs;

  PostService postService = PostService();
  var posts = <Post>[].obs;


  void listarPosts() async {
    posts.value = await postService.fetchAll();
    print(posts.value);
  }

  void updateUsuario(Usuario u) {
    Future.delayed(Duration(seconds: 5), () {
      usuario.update((val) {
        val?.idUsuario = u.idUsuario;
        val?.correo = u.correo;
      });
    });
  }
}
