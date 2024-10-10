import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/pages/menu/menu_controller.dart';
import 'package:tribu_app/configs/colors.dart';
import '../../components/Custom_Button.dart'; // Importa tu componente de botón personalizado

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
            CustomButton(
              title: 'Mi perfil',
              onPressed: () {
                menuController.goToPerfil();
              },
              isOutlined: false,
            ),
            SizedBox(height: 20),
            CustomButton(
              title: 'Mis cursos',
              onPressed: () {
                menuController.goToCursos();
              },
              isOutlined: false,
            ),
            SizedBox(height: 20),
            CustomButton(
              title: 'Configuración',
              onPressed: () {
                menuController.goToConfiguracion();
              },
              isOutlined: false,
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }
}
