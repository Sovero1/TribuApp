import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'config_controller.dart';

class ConfigPage extends StatelessWidget {
  final ConfigController controller = Get.put(ConfigController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Removes back button
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
              // Notification action
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              _buildConfigButton('Notificaciones', Icons.notifications, context,
                  () {
                // Acción para Notificaciones
              }),
              _buildConfigButton('Visualización', Icons.visibility, context,
                  () {
                Navigator.of(context).pushNamed('/visualizacion');
              }),
              _buildConfigButton('Archivos', Icons.folder, context, () {
                // Acción para Archivos
              }),
              _buildConfigButton(
                  'Publicaciones guardadas', Icons.bookmark, context, () {
                // Acción para Publicaciones guardadas
              }),
              _buildConfigButton('Cambiar contraseña', Icons.lock, context, () {
                Navigator.of(context)
                    .pushNamed('/change'); // Redirige a /change
              }),
              _buildConfigButton('Cerrar Sesión', Icons.exit_to_app, context,
                  () {
                Navigator.of(context)
                    .pushNamed('/inicio'); // Redirige a /inicio
              }),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }

  Widget _buildConfigButton(String text, IconData icon, BuildContext context,
      VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ElevatedButton(
        onPressed: onPressed, // Acción personalizada para cada botón
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor, // Color de fondo del botón
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.secondaryColor),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Titulo',
                fontSize: 18,
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
