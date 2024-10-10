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
              crossAxisAlignment: CrossAxisAlignment.start, // Alinea todo a la izquierda
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('assets/img/profile_placeholder.png'),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Javier Diaz Guzmán',
                    style: TextStyle(
                      fontFamily: 'Titulo',
                      fontSize: 26,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 60),

                Divider(color: AppColors.primaryColor, thickness: 2),

                // Usamos un Row para alinear el texto a la izquierda
                Row(
                  children: [
                    Expanded( // Para asegurar que el texto ocupe todo el ancho
                      child: Text(
                        'Ingeniería Industrial',
                        style: TextStyle(
                          fontFamily: 'Texto',
                          fontSize: 20,
                          color: AppColors.primaryColor,
                        ),
                        textAlign: TextAlign.left, // Alinear texto a la izquierda
                      ),
                    ),
                  ],
                ),
                Divider(color: AppColors.primaryColor, thickness: 2),

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '20224857',
                        style: TextStyle(
                          fontFamily: 'Texto',
                          fontSize: 20,
                          color: AppColors.primaryColor,
                        ),
                        textAlign: TextAlign.left, // Alinear texto a la izquierda
                      ),
                    ),
                  ],
                ),
                Divider(color: AppColors.primaryColor, thickness: 2),

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Universidad de Lima',
                        style: TextStyle(
                          fontFamily: 'Texto',
                          fontSize: 20,
                          color: AppColors.primaryColor,
                        ),
                        textAlign: TextAlign.left, // Alinear texto a la izquierda
                      ),
                    ),
                  ],
                ),
                Divider(color: AppColors.primaryColor, thickness: 2),

                // Row para el teléfono con el ícono a la izquierda
                Row(
                  children: [
                    Icon(Icons.phone, color: AppColors.primaryColor),
                    SizedBox(width: 10),
                    Text(
                      '98566394',
                      style: TextStyle(
                        fontFamily: 'Texto',
                        fontSize: 20,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Divider(color: AppColors.primaryColor, thickness: 2),
                SizedBox(height: 80),

                Center(
                  child: SizedBox(
                    width: 150,
                    child: CustomButton(
                      title: 'Editar',
                      onPressed: () {
                        Navigator.pushNamed(context, '/editar');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }
}