import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'inicio_controller.dart';
import '../../components/custom_button.dart'; // Importa el componente de botón

class InicioPage extends StatelessWidget {
  TemplateController control = Get.put(TemplateController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo de la aplicación
            Image.asset(
              'assets/img/splash/splash_icon.png',
              height: 200.0,
            ),
            SizedBox(height: 50.0),

            // Botón "Crear una cuenta" usando el componente reutilizable
            SizedBox(
              width: 200, // Ajusta el ancho del botón para hacerlo más pequeño
              child: CustomButton(
                title: 'Crear una cuenta',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
            ),

            SizedBox(height: 20.0), // Espacio entre los botones

            // Botón "Iniciar sesión" usando el componente reutilizable (Outlined)
            SizedBox(
              width: 200, // Ajusta el ancho del botón para hacerlo más pequeño
              child: CustomButton(
                title: 'Iniciar sesión',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                isOutlined: true, // Usar como OutlinedButton
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: _buildBody(context),
      backgroundColor: AppColors.secondaryColor,
    );
  }
}
