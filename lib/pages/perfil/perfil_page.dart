import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'perfil_controller.dart';
import '../../components/custom_button.dart';

class PerfilPage extends StatelessWidget {
  final PerfilController control = Get.put(PerfilController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen de perfil
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/img/profile_placeholder.png'), // Cambia la imagen según sea necesario
                ),
                SizedBox(height: 20.0),

                // Nombre completo
                Text(
                  'Nombre Completo',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor, // Cambia el color según tu preferencia
                  ),
                ),
                SizedBox(height: 10.0),

                // Carrera
                Text(
                  'Carrera: Ingeniería de Sistemas',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10.0),

                // Código
                Text(
                  'Código: 123456',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10.0),

                // Universidad
                Text(
                  'Universidad: Universidad Ejemplo',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10.0),

                // Número de teléfono
                Text(
                  'Teléfono: (123) 456-7890',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30.0),

                // Botón para editar información
                SizedBox(
                  width: 200,
                  child: CustomButton(
                    title: 'Editar',
                    onPressed: () {
                      Navigator.pushNamed(context, '/editar-perfil'); // Navega a la página de edición de perfil
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor, // Color de fondo
    );
  }
}