import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/components/post_card.dart';
import 'package:tribu_app/models/post.dart';
import '../../components/course_card.dart';
import '../../models/seccion_docente_curso.dart';
import '../../models/usuario.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController control = Get.put(HomeController());
  int _selectedIndex = 0;
  late Widget _body;
  Usuario? usuario;

  @override
  void initState() {
    super.initState();
    _body = _getBody(_selectedIndex);
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return _bodyPestana1();
      case 1:
        return Center(child: Text('Página 2'));
      case 2:
        return Center(child: Text('Página 3'));
      case 3:
        return Center(child: Text('Pagina 4'));
      default:
        return Center(child: Text('Página 1'));
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _body = _getBody(index);
    });
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _body, //_body(context, usuario),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    ));
  }

  Widget _bodyPestana1() {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            return control.usuario.value.idUsuario != 0
                ? Text(
                    'Mis Cursos ${control.usuario.value.correo} - ${control.usuario.value.idUsuario}',
                    style: TextStyle(
                      fontSize: 22,
                    ))
                : SizedBox.shrink();
          }),
          /*Obx(() {
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
          }),*/
          Obx((){
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: control.posts.value.length ,
                  itemBuilder: (context, index) {
                    Post post = control.posts.value[index];
                    return  PostCard(
              profilePicUrl: post.fotoEstudiante,
              userName: post.nombreEstudiante,
              userCareer: post.carreraEstudiante,
              postText: post.descripcion,
              postImageUrl: post.fotoPost,
            );
                  },

                );
          }),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    this.usuario = Usuario.fromMap(args);
    if (this.usuario != null) {
      control.updateUsuario(this.usuario!);
    }
    control.listarSecciones();
    control.listarPosts();
    return _buildBody(context);
  }
}
