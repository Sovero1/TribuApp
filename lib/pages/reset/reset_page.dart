import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'reset_controller.dart';
import '../../components/custom_button.dart'; // Importa el botón personalizado

class ResetPage extends StatelessWidget {
  ResetController control = Get.put(ResetController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'assets/img/adaptive_icon_foreground.png',
                height: 120.0,
              ),
              SizedBox(height: 15),
              // Título
              Text(
                'Recuperar cuenta',
                style: TextStyle(
                  fontFamily: 'Titulo',
                  fontSize: 22,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              // Campo de Correo
              TextField(
                controller: control.txtCorreo,
                decoration: InputDecoration(
                  labelText: 'CORREO',
                  labelStyle: TextStyle(
                      fontFamily: 'Texto', color: AppColors.primaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
              SizedBox(height: 20),
              // Botón de Buscar (Usando el componente de botón)
              CustomButton(
                title: 'Buscar',
                onPressed: () {
                  print('Buscar cuenta presionado');
                  control.resetPassword(context); // Método para buscar cuenta
                },
              ),
              SizedBox(height: 20),

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
                  // Botón de Ingresar
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
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: null,
        body: _buildBody(context),
        backgroundColor: AppColors.secondaryColor, // Color de fondo beige
      ),
    );
  }
}
