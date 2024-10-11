import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/pages/menu/menu_page.dart';
import 'package:tribu_app/pages/muro/muro_page.dart';
import '../../models/usuario.dart';
import 'home_controller.dart';
import 'package:tribu_app/configs/colors.dart';
import 'package:tribu_app/pages/search/buscar_page.dart';
import 'package:tribu_app/pages/postear/postear_page.dart';

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
    final args = Get.arguments;

    if (args != null && args is Map<String, dynamic>) {
      usuario = Usuario.fromMap(args);
    } else {
      // Maneja el caso en que no hay argumentos
      usuario = null;
    } // o inicializa un usuario por defecto
    _body = _getBody(_selectedIndex);
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return MuroPage();
      case 1:
        return BuscarPage();
      case 2:
        return PostearPage();
      case 3:
        return MenuPage();
      default:
        return Center(child: Text('Página no encontrada'));
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            'Tribu',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'Titulo',
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
              icon:
                  Icon(Icons.notifications_none, color: AppColors.primaryColor),
              onPressed: () {
                // Acción de notificaciones
              },
            ),
            IconButton(
              icon: Icon(Icons.person_outline, color: AppColors.primaryColor),
              onPressed: () {
                Navigator.of(context).pushNamed('/perfil');
              },
            ),
          ],
        ),
        backgroundColor:
            AppColors.secondaryColor, // Fondo beige de toda la pantalla
        body: _body,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:
              Colors.white, // Fondo blanco para el BottomNavigationBar
          selectedItemColor:
              AppColors.primaryColor, // Marrón oscuro para ítems seleccionados
          unselectedItemColor: AppColors
              .primaryColor, // Marrón oscuro también para ítems no seleccionados
          showSelectedLabels: true, // Mostrar etiquetas en ítems seleccionados
          showUnselectedLabels:
              true, // Mostrar etiquetas en ítems no seleccionados
          currentIndex: _selectedIndex, // Índice seleccionado
          onTap:
              _onItemTapped, // Llamada a la función cuando se selecciona un ítem
          type: BottomNavigationBarType
              .fixed, // Evita el movimiento de los íconos al ser seleccionados
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menú'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    /*this.usuario = Usuario.fromMap(args);
    if (this.usuario != null) {
      control.updateUsuario(this.usuario!);
    }*/

    return _buildBody(context);
  }
}
