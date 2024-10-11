import 'package:get/get.dart';

class PostearController extends GetxController {
  // Aquí puedes manejar el estado de las publicaciones y los datos relacionados.
  var postText = ''.obs;

  void updatePostText(String text) {
    postText.value = text;
  }

  // Puedes agregar más funciones según necesites, como manejar imágenes.
}
