import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'visualizacion_controller.dart';

import 'package:tribu_app/configs/colors.dart';

import '../../components/Custom_Button.dart';

class VisualizacionPage extends StatelessWidget {
  final VisualizacionController controller = Get.put(VisualizacionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.notifications_none, color: AppColors.primaryColor),
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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            CustomButton(
              title: 'Activar modo oscuro',
              onPressed: () {
                controller.toggleDarkMode(true);
              },
              isOutlined: controller.isDarkModeEnabled.value,
            ),
            SizedBox(height: 20),
            CustomButton(
              title: 'Desactivar modo oscuro',
              onPressed: () {
                controller.toggleDarkMode(false);
              },
              isOutlined: !controller.isDarkModeEnabled.value,
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }
}
