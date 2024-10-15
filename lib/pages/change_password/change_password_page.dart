import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'change_controller.dart';
import '../../components/custom_button.dart'; // Importa el botón personalizado

class ChangePasswordPage extends StatelessWidget {
  ChangeController control = Get.put(ChangeController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              // Logo
              Image.asset(
                'assets/img/adaptive_icon_foreground.png',
                height: 100.0,
              ),
              SizedBox(height: 20),
              // Título
              Text(
                'Cambiar contraseña',
                style: TextStyle(
                  fontFamily:
                      'Titulo', // Asegúrate de tener esta fuente cargada
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 40),
              // Campo de Contraseña nueva
              TextField(
                controller: control.txtNewPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'CONTRASEÑA NUEVA',
                  labelStyle: TextStyle(
                    fontFamily: 'Texto',
                    color: AppColors.primaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
              SizedBox(height: 20),
              // Campo de Repetir Contraseña
              TextField(
                controller: control.txtRepeatPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'REPETIR CONTRASEÑA',
                  labelStyle: TextStyle(
                    fontFamily: 'Texto',
                    color: AppColors.primaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
              SizedBox(height: 40),
              // Botón de Cambiar
              CustomButton(
                title: 'Cambiar',
                onPressed: () {
                  print('Cambiar contraseña presionado');
                  control.changePassword(
                      context); // Método para cambiar la contraseña
                },
              ),
              SizedBox(height: 20),
              // Texto de "¿Ya tienes una cuenta?" con enlace
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Ya tienes una cuenta?',
                    style: TextStyle(
                      fontFamily: 'Texto',
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/sign-in');
                    },
                    child: Text(
                      'Ingresa',
                      style: TextStyle(
                        fontFamily: 'Texto',
                        color: AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(context),
      backgroundColor: AppColors.secondaryColor, // Color de fondo beige
    );
  }
}
