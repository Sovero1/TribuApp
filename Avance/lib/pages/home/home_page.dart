import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/course_card.dart';
import '../../models/seccion_docente_curso.dart';
import '../../models/usuario.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomeController control = Get.put(HomeController());

  Widget _buildBody(BuildContext context, Usuario usuario) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Mis Cursos ${usuario.correo} - ${usuario.idUsuario}',
              style: TextStyle(
                fontSize: 22,
              )),
          Obx(() {
            return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: control.secciones.value.length,
                itemBuilder: (context, index) {
                  SeccionDocenteCurso seccion = control.secciones.value[index];
                  //print(seccion);
                  return CourseCard(
                    imageUrl: seccion.cursoImagen,
                    code: seccion.seccionCodigo.toString(),
                    courseTitle: seccion.cursoNombre,
                    status: 'Activo',
                    profe: seccion.docenteNombre,
                    diploma: seccion.diploma,
                    //tagColor: Colors.blue, // Puedes cambiar el color aquí
                  );
                });
          }),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Usuario usuario = Usuario.fromMap(args);
    control.listarSecciones();
    return _buildBody(context, usuario);
  }
}
