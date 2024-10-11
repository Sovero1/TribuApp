import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_up_controller.dart';
import '../../components/custom_button.dart';
import '../../components/desplegable_ciclo.dart'; // Importa el componente de Ciclo
import '../../components/desplegable_carrera.dart'; // Importa el componente de Carrera
import 'package:tribu_app/configs/colors.dart';

class SignUpPage extends StatelessWidget {
  SignUpController control = Get.put(SignUpController());

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
                'Crear una cuenta',
                style: TextStyle(
                  fontFamily: 'Titulo',
                  fontSize: 22,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              // Campo de Código
              TextField(
                controller: control.txtCodigo,
                decoration: InputDecoration(
                  labelText: 'CODIGO',
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
              SizedBox(height: 15),
              // Campo de Nombre
              TextField(
                controller: control.txtNombre,
                decoration: InputDecoration(
                  labelText: 'NOMBRE',
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
              SizedBox(height: 15),
              // Campo de Correo
              TextField(
                controller: control.txtCorreo,
                decoration: InputDecoration(
                  labelText: 'CORREO',
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
              SizedBox(height: 15),
              // Campo de Celular
              TextField(
                controller: control.txtCelular,
                decoration: InputDecoration(
                  labelText: 'CELULAR',
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
              SizedBox(height: 15),
              // Menú desplegable de Ciclo
              CicloDropdown(
                selectedCiclo: control.selectedCiclo,
                onChanged: (String? newValue) {
                  control.selectedCiclo = newValue!;
                },
              ),
              SizedBox(height: 15),
              // Menú desplegable de Carrera
              CarreraDropdown(
                selectedCarrera: control.selectedCarrera,
                onChanged: (String? newValue) {
                  control.selectedCarrera = newValue!;
                },
              ),
              SizedBox(height: 15),
              // Campo de Contraseña
              TextField(
                controller: control.txtContrasenia,
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
              SizedBox(height: 15),
              // Campo de Subir Foto
              Row(
                children: [
                  Icon(Icons.add_a_photo, color: AppColors.primaryColor),
                  SizedBox(width: 10),
                  Text(
                    'FOTO',
                    style: TextStyle(
                      fontFamily: 'Texto',
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Botón de Crear
              CustomButton(
                title: 'Crear',
                onPressed: () {
                  control.createAccount(context); // Método para crear cuenta
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: _buildBody(context),
      backgroundColor: AppColors.secondaryColor, // Color de fondo beige
    );
  }
}
