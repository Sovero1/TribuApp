import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_up_controller.dart';
import '../../components/custom_button.dart'; // Importa el componente de botón

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
                  color: Color(0xFF393333),
                ),
              ),
              SizedBox(height: 20),
              // Campo de Código
              TextField(
                controller: control.txtCodigo,
                decoration: InputDecoration(
                  labelText: 'CODIGO',
                  labelStyle:
                      TextStyle(fontFamily: 'Texto', color: Color(0xFF393333)),
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
                  labelStyle:
                      TextStyle(fontFamily: 'Texto', color: Color(0xFF393333)),
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
                  labelStyle:
                      TextStyle(fontFamily: 'Texto', color: Color(0xFF393333)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                controller: control.txtContrasenia,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'CONTRASEÑA NUEVA',
                  labelStyle:
                      TextStyle(fontFamily: 'Texto', color: Color(0xFF393333)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
              SizedBox(height: 20),

              CustomButton(
                title: 'Crear',
                onPressed: () {
                  print('Crear cuenta presionado');
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
                      color: Color(0xFF393333),
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
                        color: Color(0xFF645749),
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
        backgroundColor: Color(0xFFF7E2C9), // Color de fondo beige
      ),
    );
  }
}
