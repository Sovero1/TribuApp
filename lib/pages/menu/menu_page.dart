import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/pages/menu/menu_controller.dart'; // Cambia la importación

class MenuPage extends StatelessWidget {
  // Inicializa el controlador
  final CustomMenuController menuController = Get.put(CustomMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: menuController.goToPerfil,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: Color(0xFFF7E2C9),
              ),
              child: Text(
                'Mi perfil',
                style: TextStyle(
                  fontFamily: 'Texto',
                  fontSize: 18,
                  color: Color(0xFF393333),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: menuController.goToCursos,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: Color(0xFFF7E2C9),
              ),
              child: Text(
                'Mis cursos',
                style: TextStyle(
                  fontFamily: 'Texto',
                  fontSize: 18,
                  color: Color(0xFF393333),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: menuController.goToConfiguracion,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: Color(0xFFF7E2C9),
              ),
              child: Text(
                'Configuración',
                style: TextStyle(
                  fontFamily: 'Texto',
                  fontSize: 18,
                  color: Color(0xFF393333),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF7E2C9),
    );
  }
}
