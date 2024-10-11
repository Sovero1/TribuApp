import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tribu_app/components/post_card.dart';
import 'package:tribu_app/models/post.dart';
import 'package:tribu_app/pages/muro/muro_controller.dart';

class MuroPage extends StatelessWidget {
  MuroController control = Get.put(MuroController());

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: control.posts.value.length,
                itemBuilder: (context, index) {
                  Post post = control.posts.value[index];
                  return PostCard(
                    profilePicUrl: post.fotoEstudiante,
                    userName: post.nombreEstudiante,
                    userCareer: post.carreraEstudiante,
                    postText: post.descripcion,
                    postImageUrl: post.fotoPost,
                    postReacciones: post.reacciones.toString(),
                    postComentarios: post.comentarios.toString(),
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    control.listarPosts();
    return _buildBody(context);
  }
}
